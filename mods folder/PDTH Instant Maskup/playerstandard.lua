function PlayerStandard:_enter(enter_data)
	self._unit:base():set_slot(self._unit, 2)
	if Network:is_server() and self._ext_movement:nav_tracker() then
		managers.groupai:state():on_player_weapons_hot()
	end
	if self._ext_movement:nav_tracker() then
		managers.groupai:state():on_criminal_recovered(self._unit)
	end
	local skip_equip = enter_data and enter_data.skip_equip
	
	local skip_mask_anim = true
	
	if not self:_changing_weapon() and not skip_equip then
		if not self._state_data.mask_equipped then
			self._state_data.mask_equipped = true
			-- Don't forget to actually get our weapon out, or we'll have nothing onscreen
			self:_start_action_equip(self:get_animation("equip"))
			self._ext_inventory:show_equipped_unit()
		else
			self:_start_action_equip(self:get_animation("equip"))
			self._ext_inventory:show_equipped_unit()
		end
	end
	self._ext_camera:camera_unit():base():set_target_tilt(0)
	if self._ext_movement:nav_tracker() then
		self._standing_nav_seg_id = self._ext_movement:nav_tracker():nav_segment()
		local metadata = managers.navigation:get_nav_seg_metadata(self._standing_nav_seg_id)
		local location_id = metadata.location_id
		managers.hud:set_player_location(location_id)
		self._unit:base():set_suspicion_multiplier("area", metadata.suspicion_mul)
		self._unit:base():set_detection_multiplier("area", metadata.detection_mul and 1 / metadata.detection_mul or nil)
	end
	self._ext_inventory:set_mask_visibility(true)
	self:_upd_attention()
	self._ext_network:send("set_stance", 2, false, false)
end
