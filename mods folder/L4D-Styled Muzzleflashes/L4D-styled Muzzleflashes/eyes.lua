function RaycastWeaponBase:_get_primary_category(weap_id)
	local categories_clean = tweak_data.weapon[weap_id] and tweak_data.weapon[weap_id].categories and clone(tweak_data.weapon[weap_id].categories)
	if categories_clean then
		table.delete(categories_clean, "akimbo")

		return categories_clean[1]
	end
end -- hello, Hitscanner

RaycastWeaponBase.CATEGORY_MUZZLEFLASH_TEXTURES = {
	dmr = "effects/textures/weapons/muzzleflash4",
	assault_rifle = "effects/textures/weapons/muzzleflash3",
	pistol = "effects/textures/weapons/muzzleflash1",
	revolver = "effects/textures/weapons/muzzleflash4",
	smg = "effects/textures/weapons/muzzleflash1",
	shotgun = "effects/textures/weapons/muzzleflash4",
	lmg = "effects/textures/weapons/muzzleflash3",
	minigun = "effects/textures/weapons/muzzleflash4",
	snp = "effects/textures/weapons/muzzleflash4",
}

RaycastWeaponBase.CATEGORY_MUZZLEFLASH_MULTIPLIER = {
	dmr = 1.2,
	assault_rifle = 1,
	pistol = 0.8,
	revolver = 1.2,
	smg = 0.9,
	shotgun = 1.4,
	lmg = 1.2,
	minigun = 1.4,
	snp = 1.6,
}

RaycastWeaponBase.CATEGORY_MUZZLEFLASH_ANGLE = {
	dmr = 96,
	assault_rifle = 88,
	pistol = 74,
	revolver = 96,
	smg = 82,
	shotgun = 96,
	lmg = 96,
	minigun = 105,
	snp = 110,
}

Hooks:PostHook(RaycastWeaponBase, "fire", "l4d_fire", function(self)
	self:_spawn_muzzle_flash()
end)

function RaycastWeaponBase:got_silencer()
	self._silencer = managers.weapon_factory:has_perk("silencer", self._factory_id, self._blueprint)
	return self._silencer
end

function RaycastWeaponBase:_spawn_muzzle_flash(weap_id, setup_data)
	local new_muzzleflash_texture = self.CATEGORY_MUZZLEFLASH_TEXTURES[self:_get_primary_category(weap_id)] or "effects/textures/weapons/muzzleflash1" or nil
	local new_muzzleflash_multiplier = self.CATEGORY_MUZZLEFLASH_MULTIPLIER[self:_get_primary_category(weap_id)] or 1 or nil
	local new_muzzleflash_angle = self.CATEGORY_MUZZLEFLASH_ANGLE[self:_get_primary_category(weap_id)] or 100 or nil
	
	local is_silenced = self:got_silencer()
	local silenced_texture = "effects/textures/weapons/muzzleflash2"
	
	local get_fire_rate = self:weapon_fire_rate()
	local delay = 0
	if get_fire_rate > 0.04 and get_fire_rate < 0.100 then
		delay = get_fire_rate - 0.015 -- despite of this, delayed calls may still be unable to fully keep up with 1200+ rof guns
	elseif get_fire_rate > 0.100 then
		delay = 0.03
	end
	
	local is_player = self._setup.user_unit == managers.player:player_unit()
	if not is_player or self:_get_primary_category(weap_id) == "bow" or self:_get_primary_category(weap_id) == "saw" or self:_get_primary_category(weap_id) == "grenade_launcher" or self:_get_primary_category(weap_id) == "crossbow" then
		return
	else
		self._light = World:create_light("spot|specular|plane_projection", is_silenced and silenced_texture or new_muzzleflash_texture)
		self._light:set_multiplier(is_silenced and 0.5 or 1)
		self._light:set_spot_angle_end(is_silenced and 40 or 100)
		self._light:set_far_range(1300)
		self._a_flashlight_obj = self._unit:get_object(Idstring("fire"))
		self._light:link(self._a_flashlight_obj)
		self._light:set_rotation(Rotation(self._a_flashlight_obj:rotation():z(), -self._a_flashlight_obj:rotation():x(), -self._a_flashlight_obj:rotation():y()))
		self._light:set_enable(true)
		DelayedCalls:Add( "DelayedCallsMuzzleFlash", delay, function()
			self._light:set_enable(false)
			self._light:set_enable(false)
			self._light:set_enable(false)
		end)
	end
end
