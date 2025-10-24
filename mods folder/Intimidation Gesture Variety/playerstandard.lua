function PlayerStandard:_start_action_intimidate(t, secondary)
	if not self._intimidate_t or tweak_data.player.movement_state.interaction_delay < t - self._intimidate_t then
		local skip_alert = managers.groupai:state():whisper_mode()
		local voice_type, plural, prime_target = self:_get_unit_intimidation_action(not secondary, not secondary, true, false, true, nil, nil, nil, secondary)

		if prime_target and prime_target.unit and prime_target.unit.base and (prime_target.unit:base().unintimidateable or prime_target.unit:anim_data() and prime_target.unit:anim_data().unintimidateable) then
			return
		end

		local interact_type, sound_name = nil
		local sound_suffix = plural and "plu" or "sin"

		if voice_type == "stop" then
			interact_type = "cmd_stop"
			sound_name = self._shout_down_t and t < self._shout_down_t + 2 and self._last_shout_down_target == prime_target.unit and "f02b_sin" or "f02x_" .. sound_suffix
			self._shout_down_t = t
			self._last_shout_down_target = prime_target.unit
		elseif voice_type == "stop_cop" then
			interact_type = "cmd_stop"
			sound_name = "l01x_" .. sound_suffix -- hands up!!
		elseif voice_type == "mark_cop" or voice_type == "mark_cop_quiet" then
			interact_type = "cmd_point"

			if voice_type == "mark_cop_quiet" then
				sound_name = tweak_data.character[prime_target.unit:base()._tweak_table].silent_priority_shout .. "_any"
			else
				sound_name = tweak_data.character[prime_target.unit:base()._tweak_table].priority_shout .. "x_any"
				sound_name = managers.modifiers:modify_value("PlayerStandart:_start_action_intimidate", sound_name, prime_target.unit)
			end

			if self._highlight_special_mul then
				local contour_ext = prime_target.unit:contour()

				if contour_ext then
					contour_ext:add(managers.player:get_contour_for_marked_enemy(), true, self._highlight_special_mul)
				end
			end
		elseif voice_type == "down" then
			interact_type = "cmd_down" -- you !! get down !!
			sound_name = self._shout_down_t and t < self._shout_down_t + 2 and self._last_shout_down_target == prime_target.unit and "f02b_sin" or "f02x_" .. sound_suffix
			self._shout_down_t = t
			self._last_shout_down_target = prime_target.unit
		elseif voice_type == "down_cop" then
			interact_type = "cmd_down"
			sound_name = "l02x_" .. sound_suffix -- on your knees !!
		elseif voice_type == "cuff_cop" then
			interact_type = "cmd_point"
			sound_name = "l03x_" .. sound_suffix -- put on your cuffs !!
		elseif voice_type == "down_stay" then
			interact_type = "cmd_point"

			if self._shout_down_t and t < self._shout_down_t + 2 then
				sound_name = "f03b_any" -- and don't fucking move !!
				interact_type = "cmd_point"
			else
				sound_name = "f03a_" .. sound_suffix -- stay down !!
				interact_type = "cmd_down"
			end
		elseif voice_type == "come" then
			interact_type = "cmd_come"
			local static_data = managers.criminals:character_static_data_by_unit(prime_target.unit)

			if static_data then
				local character_code = static_data.ssuffix
				sound_name = "f21" .. character_code .. "_sin"
			else
				sound_name = "f38_any"
			end
		elseif voice_type == "revive" then
			interact_type = "cmd_get_up"
			local static_data = managers.criminals:character_static_data_by_unit(prime_target.unit)

			if not static_data then
				return
			end

			local character_code = static_data.ssuffix
			sound_name = "f36x_any"

			if math.random() < self._ext_movement:rally_skill_data().revive_chance then
				prime_target.unit:interaction():interact(self._unit)
			end

			self._ext_movement:rally_skill_data().morale_boost_delay_t = managers.player:player_timer():time() + (self._ext_movement:rally_skill_data().morale_boost_cooldown_t or 3.5)
		elseif voice_type == "boost" then
			interact_type = "cmd_gogo"
			local static_data = managers.criminals:character_static_data_by_unit(prime_target.unit)

			if not static_data then
				return
			end

			local character_code = static_data.ssuffix
			sound_name = "g18"
			self._ext_movement:rally_skill_data().morale_boost_delay_t = managers.player:player_timer():time() + (self._ext_movement:rally_skill_data().morale_boost_cooldown_t or 3.5)
		elseif voice_type == "escort" then
			interact_type = "cmd_point"
			sound_name = "f41_" .. sound_suffix
		elseif voice_type == "escort_keep" or voice_type == "escort_go" then
			interact_type = "cmd_point"
			sound_name = "f40_any"
		elseif voice_type == "bridge_codeword" then
			sound_name = "bri_14"
			interact_type = "cmd_point"
		elseif voice_type == "bridge_chair" then
			sound_name = "bri_29"
			interact_type = "cmd_point"
		elseif voice_type == "undercover_interrogate" then
			sound_name = "f46x_any"
			interact_type = "cmd_point"
		elseif voice_type == "undercover_escort" then
			sound_name = "f41_any"
			interact_type = "cmd_point"
		elseif voice_type == "mark_camera" then
			sound_name = "f39_any"
			interact_type = "cmd_point"

			prime_target.unit:contour():add("mark_unit", true, self._highlight_special_mul)
		elseif voice_type == "mark_turret" then
			sound_name = "f44x_any"
			interact_type = "cmd_point"
			local contour_ext = prime_target.unit:contour()

			if contour_ext then
				local type = prime_target.unit:base().get_type and prime_target.unit:base():get_type()

				prime_target.unit:contour():add(managers.player:get_contour_for_marked_enemy(type), true, self._highlight_special_mul)
			end
		elseif voice_type == "ai_stay" then
			sound_name = "f48x_any"
			interact_type = "cmd_stop"
		end

		self:_do_action_intimidate(t, interact_type, sound_name, skip_alert)
	end
end