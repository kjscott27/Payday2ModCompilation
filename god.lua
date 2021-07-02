local prev_upgd_init = UpgradesTweakData._init_pd2_values
 
function UpgradesTweakData:_init_pd2_values(tweak_data)
  prev_upgd_init(self, tweak_data)
	self.ecm_jammer_base_battery_life = 999999
	self.ecm_jammer_base_low_battery_life = 999999
	self.ecm_jammer_base_range = 999999
	self.values.player.body_armor = {
		armor = {
			0,
			3,
			4,
			5,
			7,
			9,
			15
		},
		movement = {
			1.05,
			1.025,
			1,
			0.95,
			0.75,
			0.65,
			0.575
		},
		concealment = {
			30,
			26,
			23,
			21,
			18,
			12,
			1
		},
		dodge = {
			10000,
			10000,
			10000,
			10000,
			10000,
			10000,
			10000
		},
		damage_shake = {
			1,
			0.96,
			0.92,
			0.85,
			0.8,
			0.7,
			0.5
		},
		stamina = {
			1.025,
			1,
			0.95,
			0.9,
			0.85,
			0.8,
			0.7
		}
	}
end