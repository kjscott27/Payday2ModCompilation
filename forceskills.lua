local old_init = SkillTreeTweakData.init

function SkillTreeTweakData:init()
  old_init(self)
  
  self.default_upgrades = {
    -- DEFAULT SKILLS DO NOT EDIT
    "cable_tie",
    "player_special_enemy_highlight",
    "player_hostage_trade",
    "player_sec_camera_highlight",
    "player_corpse_dispose",
    "player_corpse_dispose_amount_1",
    "player_civ_harmless_melee",
    "striker_reload_speed_default",
    "temporary_first_aid_damage_reduction",
    "temporary_passive_revive_damage_reduction_2",
    -- EDIT BELOW THIS LINE --
    -- COMMENT OUT SKILLS THAT ARE NOT TO BE USED 
    -- DO NOT DUPLICATE SKILLS, EXAMPLE IF YOU OWN SKILL DO NOT ADD SKILL HERE OR WILL RESULT IN CRASH
    ------------------
    --- MASTERMIND ---
    ------------------
    -- MASTERMIND TIER 1
    ---------------------																			
    -- "MASTERMIND UNLOCKER"
    "doctor_bag", -- BASIC
  
    -- "CABLE GUY"
    "cable_tie_interact_speed_multiplier", -- BASIC
    "cable_tie_quantity", -- ACED 																														
  
    -- "COMBAT MEDIC"
    "temporary_combat_medic_damage_multiplier1", -- BASIC 
    "player_revive_health_boost",	-- ACED															
  
    -- "ENDURANCE"																						
    "player_stamina_multiplier", -- BASIC
    "team_stamina_multiplier", -- ACED
  
    -- MASTERMIND TIER 2
    ---------------------
    -- "CONTROL FREAK"
    "player_civ_calming_alerts", -- BASIC 
    "player_civ_intimidation_mul", -- BASIC 
  
    "player_additional_assets", -- ACED
  
    -- "PAIN KILLERS"
    "player_revive_damage_reduction_level_1", -- BASIC
    "player_revive_damage_reduction_level_2", -- ACED
  
    -- "LEADERSHIP"
    "team_pistol_recoil_multiplier", -- BASIC
    "team_weapon_recoil_multiplier", -- ACED 
  
    -- MASTERMIND TIER 3
    ---------------------
    -- "SPOTTER"
    "player_marked_enemy_extra_damage", -- BASIC 
    "player_buy_spotter_asset", -- ACED
  
    -- "EQUILIBRIUM"
    "pistol_spread_multiplier", -- BASIC
    "pistol_swap_speed_multiplier", -- BASIC 
  
    "pistol_fire_rate_multiplier", -- ACED
  
    -- "DOMINATOR"
    "player_intimidate_enemies", -- BASIC 
  
    "player_intimidate_range_mul", -- ACED
    "player_intimidate_aura", -- ACED
  
    -- MASTERMIND TIER 4
    ---------------------
    -- "STOCKHOLM SYNDROME"
    "player_civilian_reviver", -- BASIC 
    "player_civilian_gives_ammo", -- ACED
  
    -- "COMBAT DOCTOR"
    "doctor_bag_quantity", -- BASIC 
    "doctor_bag_amount_increase1", -- ACED
  
    -- "JOKER" [PREREQUISITE "DOMINATOR"]
    "player_convert_enemies", -- BASIC
    "player_convert_enemies_max_minions_1", -- BASIC
  
    "player_convert_enemies_health_multiplier", -- ACED 
    "player_convert_enemies_damage_multiplier", -- ACED 
    "player_convert_enemies_interaction_speed_multiplier", -- ACED 
  
    -- MASTERMIND TIER 5
    ---------------------
    -- "KILMER"
    "assault_rifle_reload_speed_multiplier", -- BASIC 
    "snp_reload_speed_multiplier", -- BASIC
  
    "assault_rifle_move_spread_multiplier", -- ACED
    "player_run_and_reload", -- ACED 
    "snp_move_spread_multiplier", -- ACED 
  
    -- "GUNSLINGER"
    "pistol_reload_speed_multiplier", -- BASIC
    "pistol_damage_multiplier", -- ACED
  
    -- "PARTNER IN CRIME" [PREREQUISITE 'JOKER']
    "minion_master_speed_multiplier", -- BASIC
    "player_passive_convert_enemies_health_multiplier_1", -- BASIC
  
    "minion_master_health_multiplier", -- ACED 
    "player_passive_convert_enemies_health_multiplier_2", -- ACED 
  
    -- MASTERMIND TIER 6
    ---------------------
    -- "HOSTAGE TAKER"
    "player_hostage_health_regen_addend_1", -- BASIC 
    "player_hostage_health_regen_addend_2", -- ACED
  
    -- "PISTOL MESSIAH"
    "player_pistol_revive_from_bleed_out_1", -- BASIC
    "player_pistol_revive_from_bleed_out_2", -- ACED 
  
    -- "INSPIRE"
    "player_revive_interaction_speed_multiplier", -- BASIC 
    "player_morale_boost", -- BASIC 
  
    "player_long_dis_revive", -- ACED
    ---------------------------------------------------------------------------------------------------------------------------------------------------------------------
    --------------
    -- ENFORCER --
    --------------
    -- ENFORCER TIER 1
    ---------------------																			
    -- "ENFORCER UNLOCKER"
    "ammo_bag", -- BASIC 
  
    -- "OPPRESSOR"
    "player_suppression_bonus", -- BASIC 
    "player_suppression_mul_2", -- ACED 
  
    -- "BULLET STORM"
    "temporary_no_ammo_cost_1", -- BASIC 
    "temporary_no_ammo_cost_2", -- ACED 
  
    -- "TRANSPORTER"
    "carry_movement_speed_multiplier", -- BASIC
    "carry_throw_distance_multiplier", -- ACED
  
    -- ENFORCER TIER 2
    ---------------------
    -- "DIE HARD"
    "player_primary_weapon_when_downed", -- BASIC
    "player_armor_regen_timer_multiplier", -- ACED
  
    -- "UNDERDOG"
    "player_damage_multiplier_outnumbered", -- BASIC
    "player_damage_dampener_outnumbered", -- ACED
  
    -- "PUMPING IRON"
    "player_non_special_melee_multiplier", -- BASIC
    "player_melee_damage_multiplier", -- ACED
  
    -- ENFORCER TIER 3
    ---------------------
    -- "SHOTGUN IMPACT"
    "shotgun_recoil_multiplier", -- BASIC
    "shotgun_damage_multiplier", -- ACED
  
    -- "STUN RESISTANCE"
    "player_flashbang_multiplier_1", -- BASIC
    "player_flashbang_multiplier_2", -- ACED
  
    -- "TOUGH GUY"
    "player_damage_shake_multiplier", -- BASIC
    "player_bleed_out_health_multiplier", -- ACED
  
    -- ENFORCER TIER 4
    ---------------------
    -- "SHOTGUN CQB"
    "shotgun_reload_speed_multiplier", -- BASIC
    "shotgun_enter_steelsight_speed_multiplier", -- ACED
  
    -- "AMMO SPECIALIST"
    "ammo_bag_quantity", -- BASIC
    "ammo_bag_ammo_increase1", -- ACED
  
    -- "BERSERKER"
    "player_melee_damage_health_ratio_multiplier", -- BASIC
    "player_damage_health_ratio_multiplier", -- ACED
  
    -- ENFORCER TIER 5
    ---------------------
    -- "HARD BOILED"
    "shotgun_hip_fire_spread_multiplier", -- BASIC
  
    "assault_rifle_hip_fire_spread_multiplier", -- ACED
    "saw_hip_fire_spread_multiplier", -- ACED
    "pistol_hip_fire_spread_multiplier", -- ACED
    "smg_hip_fire_spread_multiplier", -- ACED
    "snp_hip_fire_spread_multiplier", -- ACED
    "lmg_hip_fire_spread_multiplier", -- ACED
  
    -- "FULLY LOADED"
    "extra_ammo_multiplier1", -- BASIC
    "player_pick_up_ammo_multiplier_2", -- ACED
  
    -- "PORTABLE SAW"
    "saw", -- BASIC
    "saw_extra_ammo_multiplier", -- ACED
  
    -- ENFORCER TIER 6
    ---------------------
    -- "OVERKILL"
    "player_overkill_damage_multiplier", -- BASIC
    "player_overkill_all_weapons", -- ACED
  
    -- "IRON MAN"
    "body_armor6", -- BASIC
    "player_shield_knock", -- ACED
    "player_run_and_shoot", -- ACED
  
    -- "CARBON BLADE" [PREREQUISITE 'PORTABLE SAW']
    "player_saw_speed_multiplier_1", -- BASIC
    "saw_lock_damage_multiplier_1", -- BASIC
  
    "player_saw_speed_multiplier_2", -- ACED
    "saw_lock_damage_multiplier_2", -- ACED
    "saw_enemy_slicer", -- ACED
    "saw_secondary", -- ACED
    -------------------------------------------------------------------------------------------------------------------
    ----------------
    -- TECHNICIAN --
    ----------------
    -- TECHNICIAN TIER 1
    --------------------
    -- "TECHNICIAN UNLOCKER"
    "trip_mine", -- BASIC 
  
    -- "RIFLEMAN"
    "assault_rifle_enter_steelsight_speed_multiplier", -- BASIC
    "snp_enter_steelsight_speed_multiplier", -- BASIC
  
    "assault_rifle_zoom_increase", -- ACED
    "snp_zoom_increase", -- ACED
  
    -- "DEMOLITION MAN"
    "trip_mine_quantity_increase_1", -- BASIC
    "player_trip_mine_deploy_time_multiplier", -- ACED
  
    -- "NERVES OF STEEL"
    "player_interacting_damage_multiplier", -- BASIC
    "player_steelsight_when_downed", -- ACED
  
    -- TECHNICIAN TIER 2
    --------------------
    -- "SHARPSHOOTER"
    "weapon_single_spread_multiplier", -- BASIC
  
    "assault_rifle_recoil_multiplier", -- ACED
    "snp_recoil_multiplier", -- ACED
  
    -- "COMBAT ENGINEER"
    "trip_mine_can_switch_on_off", -- BASIC
  
    "trip_mine_sensor_toggle", -- ACED
    "trip_mine_sensor_highlight", -- ACED
  
    -- "HARDWARE EXPERT"
    "player_drill_fix_interaction_speed_multiplier", -- BASIC
    "player_trip_mine_deploy_time_multiplier_2", -- BASIC
  
    "player_drill_autorepair", -- ACED
    "player_sentry_gun_deploy_time_multiplier", -- ACED
  
    -- TECHNICIAN TIER 3
    --------------------
    -- "SENTRY GUN"
    "sentry_gun", -- BASIC
    "sentry_gun_armor_multiplier", -- ACED
  
    -- "TACTICAL MINES"
    "trip_mine_explosion_size_multiplier_1", -- BASIC
    "trip_mine_marked_enemy_extra_damage", -- ACED
  
    -- "DRILL SERGEANT"
    "player_drill_speed_multiplier1", -- BASIC
    "player_drill_speed_multiplier2", -- ACED
  
    -- TECHNICIAN TIER 4
    --------------------
    -- "SENTRY TARGETING PACKAGE" [PREREQUISITE 'SENTRY']
    "sentry_gun_spread_multiplier", -- BASIC
  
    "sentry_gun_rot_speed_multiplier", -- ACED
    "sentry_gun_extra_ammo_multiplier_1", -- ACED
  
    -- "JACK OF ALL TRADES"
    "trip_mine_explosion_size_multiplier_2", -- BASIC
    "player_carry_sentry_and_trip", -- ACED
  
    -- "SILENT DRILLING"
    "player_drill_alert", -- BASIC
    "player_silent_drill", -- ACED
  
    -- TECHNICIAN TIER 5
    --------------------
    -- "SENTRY COMBAT UPGRADE" [PREREQUISITE 'SENTRY']
    "sentry_gun_can_reload", -- BASIC
    "sentry_gun_shield", -- ACED
  
    -- "SHAPED CHARGE"
    "trip_mine_quantity_increase_3", -- BASIC
    "player_trip_mine_shaped_charge", -- ACED
  
    -- "SHOCK PROOF"
    "player_taser_malfunction", -- BASIC
    "player_taser_self_shock", -- ACED
  
    -- TECHNICIAN TIER 6
    --------------------
    -- "SENTRY TOWER DEFENSE" [PREREQUISITE 'SENTRY']
    "sentry_gun_quantity_increase", -- BASIC
    "sentry_gun_damage_multiplier", -- ACED
  
    -- "MAG PLUS"
    "weapon_clip_ammo_increase_1", -- BASIC
    "akimbo_clip_ammo_increase_1", -- BASIC
  
    "weapon_clip_ammo_increase_2", -- ACED
    "akimbo_clip_ammo_increase_2", -- ACED
  
    -- "BULLETPROOF"
    "player_armor_multiplier", -- BASIC
    "team_armor_regen_time_multiplier", -- ACED
    -------------------------------------------------------------------------------------------------------------------
    -----------
    -- GHOST --
    -----------
    -- GHOST TIER 1
    --------------------
    -- "GHOST UNLOCKER"
    "ecm_jammer", -- BASIC 	
    "ecm_jammer_affects_cameras", -- BASIC
  
    -- "DEAD PRESIDENTS"
    "player_small_loot_multiplier1", -- BASIC
    "player_small_loot_multiplier2", -- ACED 
  
    -- "SPRINTER"
    "player_stamina_regen_timer_multiplier", -- BASIC
    "player_stamina_regen_multiplier", -- BASIC
  
    "player_run_dodge_chance", -- ACED 
    "player_run_speed_multiplier", -- ACED 
  
    -- "CAT BURGLAR"
    "player_fall_damage_multiplier", -- BASI
  
    "player_fall_health_damage_multiplier", -- ACED 
    "player_respawn_time_multiplier", -- ACED 
  
    -- GHOST TIER 2
    --------------------
    -- "FAST HANDS"
    "carry_interact_speed_multiplier_1", -- BASIC
    "carry_interact_speed_multiplier_2", -- ACED 
  
    -- "CHAMELEON"
    "player_suspicion_bonus", -- BASIC
    "player_sec_camera_highlight_mask_off", -- BASIC
    "player_special_enemy_highlight_mask_off", -- BASIC
  
    "player_camouflage_bonus", -- ACED 
  
    -- "CLEANER"
    "player_buy_bodybags_asset", -- BASIC
    "weapon_special_damage_taken_multiplier", -- BASIC
  
    "player_corpse_dispose_amount_2", -- ACED 
  
    -- GHOST TIER 3
    --------------------
    -- "SHINOBI"
    "player_walk_speed_multiplier", -- BASIC
    "player_crouch_speed_multiplier", -- BASIC
  
    "player_silent_kill", -- ACED 
  
    -- "MARTIAL ARTS"
    "player_melee_knockdown_mul", -- BASIC
    "player_melee_damage_dampener", -- ACED 
  
    -- "SMG SPECIALIST"
    "smg_reload_speed_multiplier", -- BASIC
    "smg_fire_rate_multiplier", -- ACED 
  
    -- GHOST TIER 4
    --------------------
    -- "NINE LIVES"
    "player_additional_lives_1", -- BASIC
    "player_cheat_death_chance", -- ACED 
  
    -- "ECM SPECIALIST"
    "ecm_jammer_quantity_increase_1", -- BASIC
  
    "ecm_jammer_duration_multiplier_2", -- ACED 
    "ecm_jammer_feedback_duration_boost_2", -- ACED 
    "ecm_jammer_affects_pagers", -- ACED 
  
    -- "SILENT KILLER"
    "weapon_silencer_damage_multiplier_1", -- BASIC
  
    "weapon_silencer_damage_multiplier_2", -- ACED 
    "weapon_silencer_armor_piercing_chance_1", -- ACED 
  
    -- GHOST TIER 5
    --------------------
    -- "LOCKPICKING EXPERT"
    "player_pick_lock_easy", -- BASIC
    "player_pick_lock_easy_speed_multiplier", -- BASIC
  
    "player_pick_lock_hard", -- ACED 
    "player_pick_lock_easy_speed_multiplier_2", -- ACED 
  
    -- "ECM OVERDRIVE"
    "ecm_jammer_duration_multiplier", -- BASIC
    "ecm_jammer_can_open_sec_doors", -- ACED 
  
    -- "THE PROFESSIONAL"
    "weapon_silencer_recoil_multiplier", -- BASIC
    "weapon_silencer_enter_steelsight_speed_multiplier", -- BASIC
  
    "weapon_silencer_spread_multiplier", -- ACED 
    "weapon_silencer_armor_piercing_chance_2", -- ACED 
  
    -- GHOST TIER 6
    --------------------
    -- "CAMERA LOOP"
    "player_tape_loop_duration_1", -- BASIC
    "player_tape_loop_duration_2", -- ACED 
  
    -- "ECM FEEDBACK"
    "ecm_jammer_can_activate_feedback", -- BASIC
  
    "ecm_jammer_feedback_duration_boost", -- ACED 
    "ecm_jammer_interaction_speed_multiplier", -- ACED 
    "ecm_jammer_can_retrigger", -- ACED 
  
    -- "MOVING TARGET"
    "player_can_strafe_run", -- BASIC
    "player_can_free_run", -- ACED 
    -------------------------------------------------------------------------------------------------------------------
    --------------
    -- FUGITIVE --
    --------------
    -- FUGITIVE TIER 1
    --------------------
    -- "FUGITIVE UNLOCKER"
    "first_aid_kit", -- BASIC 
  
    -- "DARE DEVIL"
    "player_climb_speed_multiplier_1", -- BASIC 
    "player_on_zipline_dodge_chance", -- ACED
  
    -- "HIDDEN BLADE"
    "player_melee_concealment_modifier", -- BASIC 
    "player_silent_kill", -- ACED
  
    -- "THICK SKIN"
    "player_damage_shake_addend", -- BASIC
  
    "player_level_2_armor_addend", -- ACED
    "player_level_3_armor_addend", -- ACED
    "player_level_4_armor_addend", -- ACED
  
    -- FUGITIVE TIER 2
    --------------------
    -- "RUN AND GUN"
    "player_movement_speed_multiplier", -- BASIC 
    "player_steelsight_normal_movement_speed", -- ACED
  
    -- "SIXTH SENSE"
    "player_standstill_omniscience", -- BASIC 
    "player_mask_off_pickup", -- ACED
  
    -- "DUCK AND COVER"
    "player_crouch_dodge_chance_1", -- BASIC 
    "player_crouch_dodge_chance_2", -- ACED
  
    -- FUGITIVE TIER 3
    --------------------
    -- "BROTHERS KEEPER"
    "player_gangster_damage_dampener_1", -- BASIC 
    "player_gangster_damage_dampener_2", -- ACED
  
    -- "WINSTON WOLFE"
    "player_extra_corpse_dispose_amount", -- BASIC 
    "player_cleaner_cost_multiplier", -- ACED
  
    -- "QUICK FIX"
    "first_aid_kit_deploy_time_multiplier", -- BASIC 
    "first_aid_kit_damage_reduction_upgrade", -- ACED
  
    -- FUGITIVE TIER 4
    --------------------
    -- "SWAN SONG"
    "temporary_berserker_damage_multiplier_1", -- BASIC 
  
    "temporary_berserker_damage_multiplier_2", -- ACED
    "player_berserker_no_ammo_cost", -- ACED
  
    -- "UNDERTAKER"
    "bodybags_bag", -- BASIC 
    "bodybags_bag_quantity", -- ACED
  
    -- "UPPERS"
    "first_aid_kit_quantity_increase_1", -- BASIC 
    "first_aid_kit_quantity_increase_2", -- ACED
  
    -- FUGITIVE TIER 5
    --------------------
    -- "TRIGGER HAPPY"
    "pistol_stacking_hit_expire_t_1", -- BASIC 
    "pistol_stacking_hit_damage_multiplier", -- BASIC 
  
    "pistol_stacking_hit_expire_t_2", -- ACED
  
    -- "LOW BLOW"
    "player_detection_risk_add_crit_chance_1", -- BASIC 
    "player_detection_risk_add_crit_chance_2", -- ACED
  
    -- "COUNTERSTRIKE"
    "player_counter_strike_melee", -- BASIC 
    "player_counter_strike_spooc", -- ACED
  
    -- FUGITIVE TIER 6
    --------------------
    -- "BULLS EYE"
    "player_headshot_regen_armor_bonus_1", -- BASIC 
    "player_headshot_regen_armor_bonus_2", -- ACED
  
    -- "SNEAKY BASTARD"
    "player_detection_risk_add_dodge_chance_1", -- BASIC 
    "player_detection_risk_add_dodge_chance_2", -- ACED
  
    -- "AKIMBO"
    "jowi", -- BASIC 
    "x_1911", -- BASIC 
    "x_b92fs", -- BASIC 
    "x_deagle", -- BASIC 
    "x_g22c", -- BASIC 
    "x_g17", -- BASIC 
    "x_usp", -- BASIC 
    "akimbo_recoil_index_addend_1", -- BASIC 
    "akimbo_recoil_index_addend_2", -- BASIC 
  
    "akimbo_extra_ammo_multiplier_1", -- ACED 
    "akimbo_extra_ammo_multiplier_2", -- ACED
    "akimbo_recoil_index_addend_3", -- ACED
    -------------------------------------------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------------------------------
    -- PERK DECK SKILLS
    "weapon_passive_headshot_damage_multiplier",	
    "passive_player_xp_multiplier",
    "player_passive_suspicion_bonus",
    "player_passive_armor_movement_penalty_multiplier",	
    "armor_kit",
    "player_pick_up_ammo_multiplier",
    "weapon_passive_damage_multiplier",
    "passive_doctor_bag_interaction_speed_multiplier",
    "akimbo_extra_ammo_multiplier_1",
    "akimbo_recoil_index_addend_1",
    "akimbo_recoil_index_addend_2",
    "melee_stacking_hit_damage_multiplier_1",
    "melee_stacking_hit_damage_multiplier_2",
    "melee_stacking_hit_expire_t",
    "player_alarm_pager_speed_multiplier",
    "player_armor_health_store_amount_1",
    "player_armor_health_store_amount_2",
    "player_armor_health_store_amount_3",
    "player_armor_max_health_store_multiplier",
    "player_armor_piercing_chance_1",
    "player_armor_piercing_chance_2",
    "player_armor_regen_damage_health_ratio_multiplier_1",
    "player_armor_regen_damage_health_ratio_multiplier_2",
    "player_armor_regen_damage_health_ratio_multiplier_3",
    "player_armor_regen_damage_health_ratio_threshold_multiplier",
    "player_armor_regen_timer_multiplier_passive",
    "player_armor_regen_timer_multiplier_tier",
    "player_armor_regen_timer_stand_still_multiplier",
    "player_camouflage_multiplier",
    "player_corpse_dispose_speed_multiplier",
    "player_damage_dampener_close_contact_1",
    "player_damage_dampener_close_contact_2",
    "player_damage_dampener_close_contact_3",
    "player_damage_dampener_outnumbered_strong",
    "player_damage_to_hot_1",
    "player_damage_to_hot_2",
    "player_damage_to_hot_3",
    "player_damage_to_hot_4",
    "player_damage_to_hot_extra_ticks",
    "player_killshot_close_panic_chance",
    "player_killshot_close_regen_armor_bonus",
    "player_killshot_regen_armor_bonus",
    "player_kill_change_regenerate_speed",
    "player_level_2_armor_multiplier_1",
    "player_level_2_armor_multiplier_2",
    "player_level_2_armor_multiplier_3",
    "player_level_2_dodge_addend_1",
    "player_level_2_dodge_addend_2",
    "player_level_2_dodge_addend_3",
    "player_level_3_armor_multiplier_1",
    "player_level_3_armor_multiplier_2",
    "player_level_3_armor_multiplier_3",
    "player_level_3_dodge_addend_1",
    "player_level_3_dodge_addend_2",
    "player_level_3_dodge_addend_3",
    "player_level_4_armor_multiplier_1",
    "player_level_4_armor_multiplier_2",
    "player_level_4_armor_multiplier_3",
    "player_level_4_dodge_addend_1",
    "player_level_4_dodge_addend_2",
    "player_level_4_dodge_addend_3",
    "player_loose_ammo_restore_health_give_team",
    "player_melee_kill_life_leech",
    "player_melee_life_leech",
    "player_movement_speed_damage_health_ratio_multiplier",
    "player_movement_speed_damage_health_ratio_threshold_multiplier",
    "player_panic_suppression",
    "player_passive_dodge_chance_1",
    "player_passive_dodge_chance_2",
    "player_passive_dodge_chance_3",
    "player_passive_health_multiplier_1",
    "player_passive_health_multiplier_2",
    "player_passive_health_multiplier_3",
    "player_passive_health_multiplier_4",
    "player_passive_health_regen",
    "player_passive_intimidate_range_mul",
    "player_passive_loot_drop_multiplier",
    "player_perk_armor_loss_multiplier_1",
    "player_perk_armor_loss_multiplier_2",
    "player_perk_armor_loss_multiplier_3",
    "player_perk_armor_loss_multiplier_4",
    "player_perk_armor_regen_timer_multiplier_1",
    "player_perk_armor_regen_timer_multiplier_2",
    "player_perk_armor_regen_timer_multiplier_3",
    "player_perk_armor_regen_timer_multiplier_4",
    "player_perk_armor_regen_timer_multiplier_5",
    "player_pick_lock_speed_multiplier",
    "player_stand_still_crouch_camouflage_bonus_1",
    "player_stand_still_crouch_camouflage_bonus_2",
    "player_stand_still_crouch_camouflage_bonus_3",
    "player_tier_armor_multiplier_1",
    "player_tier_armor_multiplier_2",
    "player_tier_armor_multiplier_3",
    "player_tier_armor_multiplier_4",
    "player_tier_armor_multiplier_5",
    "player_tier_armor_multiplier_6",
    "player_tier_dodge_chance_1",
    "player_tier_dodge_chance_2",
    "player_tier_dodge_chance_3",
    "player_uncover_multiplier",
    "team_hostage_damage_dampener_multiplier",
    "team_hostage_health_multiplier",
    "team_hostage_stamina_multiplier",
    "team_passive_armor_multiplier",
    "team_passive_armor_regen_time_multiplier",
    "team_passive_stamina_multiplier_1",
    "temporary_loose_ammo_give_team",
    "temporary_loose_ammo_restore_health_1",
    "temporary_loose_ammo_restore_health_2",
    "temporary_loose_ammo_restore_health_3",
    "weapon_passive_armor_piercing_chance",
    "weapon_passive_swap_speed_multiplier_1",
  }
end