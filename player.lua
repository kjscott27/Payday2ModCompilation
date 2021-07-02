local prev_player_init = PlayerTweakData.init

-- Gab over at https://www.payday2.pw/ provided these values
-- this is a pretty risky way of going about editing character speed but should be okay if
-- just running about in a private lobby with pals
function PlayerTweakData:init(tweak_data)
  prev_player_init(self, tweak_data)
  self.put_on_mask_time = 0
  self.movement_state.standard.movement.speed.STANDARD_MAX = 700
	self.movement_state.standard.movement.speed.RUNNING_MAX = 1150
	self.movement_state.standard.movement.speed.CROUCHING_MAX = 450
	self.movement_state.standard.movement.speed.STEELSIGHT_MAX = 1150
	self.movement_state.standard.movement.speed.INAIR_MAX = 700
	self.movement_state.standard.movement.speed.CLIMBING_MAX = 1150
end