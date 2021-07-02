local prev_player_init = PlayerTweakData.init

function PlayerTweakData:init(tweak_data)
  prev_player_init(self, tweak_data)
  self.put_on_mask_time = 0
end