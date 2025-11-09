function PlayerCarry:enter(state_data, enter_data)
	PlayerCarry.super.enter(self, state_data, enter_data)
	self._unit:camera():camera_unit():base():set_target_tilt(PlayerCarry.target_tilt)
	self._ext_camera:play_shaker("player_grab_bag", 0.5)
end

function PlayerCarry:exit(state_data, new_state_name)
	PlayerCarry.super.exit(self, state_data, new_state_name)
	self._unit:camera():camera_unit():base():set_target_tilt(0)
	self._ext_camera:play_shaker("player_throw_bag", 0.6)

	local exit_data = {
		skip_equip = true
	}
	self._dye_risk = nil

	managers.job:set_memory("kill_count_carry", nil, true)
	managers.job:set_memory("kill_count_no_carry", nil, true)

	self._state_data.previous_state = "carry"

	return exit_data
end