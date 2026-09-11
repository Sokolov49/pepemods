function PlayerMaskOff:_end_action_start_standard()
	self:_interupt_action_start_standard(nil, nil, true)
	--PlayerStandard.say_line(self, "a01x_any", true)
	PlayerStandard.say_line(self, "p47", true)
	managers.player:set_player_state("standard")
	managers.achievment:award("no_one_cared_who_i_was")
end