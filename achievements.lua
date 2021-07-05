--[[
	Achievement manager
	Author: DvD
	Menu based on Simple Menu by    @Harfatus
--]]
 
achs_per_menu = 15	-- How many achievements are shown per page, play around with this, depends on your resolution I think

if not SimpleMenu then
    SimpleMenu = class()
 
    function SimpleMenu:init(m_id, title, message, options)		
        self.visible = false
		self.is_main = m_id == 99999
		self.dialog_data = { title = title, text = message, button_list = {}, id = "kjmenu#"..m_id }
		self.ids = {}
		for _,opt in ipairs(options) do
			if opt.data then self.ids[opt.text] = opt.data end
			local elem = {}
			elem.text = opt.text
			elem.callback_func = callback(self, self, "_do_callback", { data = opt.data, callback = opt.callback })
			elem.cancel_button = opt.is_cancel_button or false
			table.insert(self.dialog_data.button_list, elem)
		end
        return self
    end
	
    function SimpleMenu:_do_callback(info)
		if info.callback then info.callback(info.data) end
		self.visible = false
    end
	
    function SimpleMenu:show()
        if not self.visible then
			self.visible = true
			
			-- Update current achievement status
			local new_data = self.dialog_data
			if not self.is_main then
				for _,button in pairs(new_data.button_list) do
					if self.ids[button.text] then
						local is_unlocked = managers.achievment.achievments[self.ids[button.text]].awarded
						button.text = button.text..(is_unlocked and " (unlocked)" or " (locked)")
					end
				end
			end
			
			managers.system_menu:show(new_data)
		end
    end
 
    function SimpleMenu:hide()
        if self.visible then
			self.visible = false
            managers.system_menu:close(self.dialog_data.id)
        end
    end
end
 
patched_update_input = patched_update_input or function (self, t, dt )
    if self._data.no_buttons then
        return
    end
    
    local dir, move_time
    local move = self._controller:get_input_axis( "menu_move" )
 
    if( self._controller:get_input_bool( "menu_down" )) then
        dir = 1
    elseif( self._controller:get_input_bool( "menu_up" )) then
        dir = -1
    end
    
    if dir == nil then
        if move.y > self.MOVE_AXIS_LIMIT then
            dir = 1
        elseif move.y < -self.MOVE_AXIS_LIMIT then
            dir = -1
        end
    end
 
    if dir ~= nil then
        if( ( self._move_button_dir == dir ) and self._move_button_time and ( t < self._move_button_time + self.MOVE_AXIS_DELAY ) ) then
            move_time = self._move_button_time or t
        else
            self._panel_script:change_focus_button( dir )
            move_time = t
        end
    end
 
    self._move_button_dir = dir
    self._move_button_time = move_time
    
    local scroll = self._controller:get_input_axis( "menu_scroll" )
    -- local sdir
    if( scroll.y > self.MOVE_AXIS_LIMIT ) then
        self._panel_script:scroll_up()
        -- sdir = 1
    elseif( scroll.y < -self.MOVE_AXIS_LIMIT ) then
        self._panel_script:scroll_down()
        -- sdir = -1
    end
end
managers.system_menu.DIALOG_CLASS.update_input = patched_update_input
managers.system_menu.GENERIC_DIALOG_CLASS.update_input = patched_update_input

ach_callback = ach_callback or function(id, force)
	if id == "-1" then
		for id, ach in pairs(managers.achievment.achievments) do
			if force and not ach.awarded then 
				managers.achievment:award(id)
				ach.awarded = true
			elseif not force and ach.awarded then 
				managers.achievment:clear_steam(id)
				ach.awarded = false
			end
		end
	elseif managers.achievment.achievments[id].awarded then 
		managers.achievment:clear_steam(id)
		managers.achievment.achievments[id].awarded = false
	else 
		managers.achievment:award(id) 
		managers.achievment.achievments[id].awarded = true
	end
end
 
ach_individual = ach_individual or function(ach_type)	-- 1 = all, 2 = locked only, 3 = unlocked only
	achievements = {}
	ach_keys = {}
	
	for name, id in pairs(all_achievements) do
		local is_unlocked = managers.achievment.achievments[id].awarded
		if (is_unlocked and ach_type ~= 2) or (not is_unlocked and ach_type ~= 3) then
			achievements[name] = id
			table.insert(ach_keys, name)
		end
	end
	
	table.sort(ach_keys)
	init_menus()
	
	menu_index = 1
	menus[menu_index]:show()
end
 
ach_all_activate = ach_all_activate or function()
	ach_callback("-1", true)
	SimpleMenu:new(1, "Achievement manager", "Note that this will take a while to complete!\nYou may need a restart to fully see all changes.", {{ text = "OK", is_cancel_button = true }} ):show()
end
 
ach_all_deactivate = ach_all_deactivate or function()
	ach_callback("-1", false)
	SimpleMenu:new(1, "Achievement manager", "Note that this will take a while to complete!\nYou may need a restart to fully see all changes.", {{ text = "OK", is_cancel_button = true }} ):show()
end
 
ach_nextpage = ach_nextpage or function()
	menus[menu_index]:hide()
	menu_index = menu_index + 1
	
	-- Preserve focus on next/prev page
	menus[menu_index].dialog_data.focus_button = achs_per_menu + 2
	menus[menu_index]:show()
end
 
ach_prevpage = ach_prevpage or function()
	menus[menu_index]:hide()
	menu_index = menu_index - 1
	
	-- Preserve focus on next/prev page
	menus[menu_index].dialog_data.focus_button = (menu_index > 1 and menu_index < menu_count and achs_per_menu + 3) or achs_per_menu + 2
	menus[menu_index]:show()
end
 
ach_firstpage = ach_firstpage or function()
	menus[menu_index]:hide()
	menu_index = 1
	menus[menu_index]:show()
end
 
ach_lastpage = ach_lastpage or function()
	menus[menu_index]:hide()
	menu_index = menu_count
	menus[menu_index]:show()
end

achievements = achievements or nil -- This is how you spell "achievements"    @overkill
all_achievements = all_achievements or nil
total_ach_count = 0
ach_keys = ach_keys or {}
 
if not all_achievements then
	all_achievements = {}
	for ach,_ in pairs(managers.achievment.achievments) do
		local vis = tweak_data.achievement.visual[ach]
		if vis and vis.name_id then
			local key = managers.localization:to_upper_text(vis.name_id)
			all_achievements[key] = ach
			total_ach_count = total_ach_count + 1
		end
	end
end


menus = menus or nil
menu_index = 1
menu_count = menu_count or nil

function init_menus()
	menus = {}
	menu_count = math.ceil(#ach_keys / achs_per_menu)
	if menu_count == 0 then menus[1] = SimpleMenu:new(1, "Achievement manager", "No achievements in this list", {{ text = "Cancel", is_cancel_button = true }} ) end
	for m_id = 1, menu_count do
		local opts = {}
		local start = (m_id - 1) * achs_per_menu + 1
		for i = start, start + achs_per_menu - 1 do
			table.insert(opts, { text = ach_keys[i], callback = ach_callback, data = achievements[ach_keys[i]] })
		end
		
		table.insert(opts, { text = "" })
		if m_id < menu_count then table.insert(opts, { text = "Next page", callback = ach_nextpage }) end
		if m_id > 1 then table.insert(opts, { text = "Previous page", callback = ach_prevpage }) end
		table.insert(opts, { text = "" })
		if m_id > 1 then table.insert(opts, { text = "First page", callback = ach_firstpage }) end
		if m_id < menu_count then table.insert(opts, { text = "Last page", callback = ach_lastpage }) end
		table.insert(opts, { text = "" })
		table.insert(opts, { text = "Cancel", is_cancel_button = true })

		menus[m_id] = SimpleMenu:new(m_id, "Achievement manager (page "..tostring(m_id).."/"..tostring(menu_count)..")", "Click on an achievement to lock/unlock them", opts)
	end
end

main_menu = main_menu or nil
if not main_menu then
	local opts = {}
	table.insert(opts, { text = "-----CHEAT TOGGLES----" })
	table.insert(opts, { text = "Toggle god mode" })
	table.insert(opts, { text = "" })
	table.insert(opts, { text = "-----PLAYER OPTIONS----" })
	table.insert(opts, { text = "Set level 100" })
	table.insert(opts, { text = "Set infamy 100" })
	table.insert(opts, { text = "" })
	table.insert(opts, { text = "-----ACHIEVEMENTS----" })
	table.insert(opts, { text = "Individual achievement manager (all)", callback = ach_individual, data = 1 })
	table.insert(opts, { text = "Individual achievement manager (locked only)", callback = ach_individual, data = 2 })
	table.insert(opts, { text = "Individual achievement manager (unlocked only)", callback = ach_individual, data = 3 })
	table.insert(opts, { text = "" })
	table.insert(opts, { text = "Unlock ALL ("..total_ach_count.." total) achievements", callback = ach_all_activate })
	table.insert(opts, { text = "Lock ALL ("..total_ach_count.." total) achievements", callback = ach_all_deactivate })
	table.insert(opts, { text = "" })
	table.insert(opts, { text = "Cancel", is_cancel_button = true })
	main_menu = SimpleMenu:new(99999, "kJs Mod Manager Menu", "Choose an option", opts)
end

main_menu:show()