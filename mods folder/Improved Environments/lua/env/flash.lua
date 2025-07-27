if not StreamNPCLights then
	local level_id = Global.level_data and Global.level_data.level_id or Global.game_settings and Global.game_settings.level_id
	local sh = BLT.Mods:GetModByName("Streamlined Heisting")

	StreamNPCLights = ModInstance
	StreamNPCLights.has_sh = sh and sh:IsEnabled() and sh:WasEnabledAtStart()
	StreamNPCLights.flashlight_state_on_executed = ({
		nmh = {
			[103469] = true,
			[103470] = false,
		},
	})[level_id] or {}
end

-- not needed with streamlined heisting
if StreamNPCLights.has_sh then
	if not StreamNPCLights.logged_has_sh then
		StreamNPCLights.logged_has_sh = true

		log("[Streamlined NPC Lights] Streamlined Heisting is enabled, mod changes not made!")
	end

	return
end

if RequiredScript == "lib/managers/mission/missionscriptelement" then
	local function on_executed_hook(self)
		local state = StreamNPCLights.flashlight_state_on_executed[self._id]

		if state ~= nil then
			managers.game_play_central:set_flashlights_on(state)
		end
	end

	Hooks:PostHook( MissionScriptElement, "on_executed", "snpcl_on_executed", on_executed_hook )
	Hooks:PostHook( MissionScriptElement, "client_on_executed", "snpcl_client_on_executed", on_executed_hook )
elseif RequiredScript == "lib/units/enemies/cop/copmovement" then
	-- Toggle flashlights when set to cool or uncool
	Hooks:PreHook( CopMovement, "_post_init", "snpcl__post_init", function(self)
		local equipped_weapon = self._ext_inventory:equipped_unit()
		if alive(equipped_weapon) then
			equipped_weapon:base():set_flashlight_enabled(false)
		end
	end )

	function CopMovement:_chk_flashlight_state()
		local equipped_weapon = self._ext_inventory:equipped_unit()
		if not alive(equipped_weapon) then
			return
		end

		local flashlight_on = not self:cool() and not self._ext_inventory:shield_unit() and managers.game_play_central:flashlights_on()
		if flashlight_on then
			local lights = self._unit:get_objects_by_type(Idstring("light"))
			if #lights > 0 and lights[1]:enable() then
				flashlight_on = false
			end
		end

		equipped_weapon:base():set_flashlight_enabled(flashlight_on)
	end

	Hooks:PostHook(CopMovement, "set_cool", "snpcl_set_cool", CopMovement._chk_flashlight_state)

	function CopMovement:sync_equip_weapon()
		self:_chk_flashlight_state()
	end
elseif RequiredScript == "lib/units/weapons/npcraycastweaponbase" then
	NPCRaycastWeaponBase.flashlight_blacklist = NPCRaycastWeaponBase.flashlight_blacklist or {
		[Idstring("units/payday2/weapons/wpn_npc_sawnoff_shotgun/wpn_npc_sawnoff_shotgun"):key()] = true,
		[Idstring("units/payday2/weapons/wpn_npc_mp5_tactical/wpn_npc_mp5_tactical"):key()] = true,
		[Idstring("units/payday2/weapons/wpn_npc_sniper/wpn_npc_sniper"):key()] = true,
		[Idstring("units/pd2_dlc_mad/weapons/wpn_npc_svd/wpn_npc_svd"):key()] = true,
		[Idstring("units/pd2_dlc_mad/weapons/wpn_npc_asval/wpn_npc_asval"):key()] = true,
		[Idstring("units/pd2_dlc_spa/weapons/wpn_npc_svd_silenced/wpn_npc_svd_silenced"):key()] = true,
		[Idstring("units/pd2_dlc_drm/weapons/wpn_npc_heavy_zeal_sniper/wpn_npc_heavy_zeal_sniper"):key()] = true,
		[Idstring("units/pd2_dlc_uno/weapons/wpn_npc_smoke/wpn_npc_smoke"):key()] = true,
		[Idstring("units/pd2_dlc_usm1/weapons/wpn_npc_dmr/wpn_npc_dmr"):key()] = true,
		[Idstring("units/pd2_dlc_usm2/weapons/wpn_npc_deagle/wpn_npc_deagle"):key()] = true
	}

	Hooks:PostHook( NPCRaycastWeaponBase, "init", "snpcl_init", function(self)
		if self.flashlight_blacklist[self._unit:name():key()] then
			if self._flashlight_data and alive(self._flashlight_data.light) then
				World:delete_light(self._flashlight_data.light)
			end
			self._flashlight_data = nil
			return
		end

		if self._flashlight_data then
			return
		end

		local light_object = self._unit:get_object(Idstring("a_effect_flashlight"))
		if not light_object then
			return
		end

		local effect = self._unit:effect_spawner(Idstring("flashlight"))
		if not effect then
			return
		end

		local light = World:create_light("spot|specular")

		self._flashlight_data = {
			light = light,
			effect = effect
		}

		light:link(light_object)
		light:set_far_range(400)
		light:set_spot_angle_end(25)
		light:set_multiplier(2)

		local obj_rot = light_object:rotation()
		light:set_rotation(Rotation(obj_rot:z(), -obj_rot:x(), -obj_rot:y()))
		light:set_enable(false)

		self._unit:set_moving()
	end )
end
