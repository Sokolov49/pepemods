if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "arm_fac" then
	return
end
	

	local effect_positions_harbor = {
		{
			position = Vector3(-1753, 457, 398),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2341, 1714, 384),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1147, 1854, 390),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3226, -365, 414),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3589, -1211, 443),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1531, -1137, 476),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1817, -3662, 472),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5646, -3783, 439),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(483, -5764, 397),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1973, -3926, 410),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3435, -3684, 367),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3402, -5171, 397),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(198, -763, 453),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2200, -702, 473),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3866, -752, 410),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5338, -730, 415),
			rotation = Rotation(0, 0, -0)
		}
	}
	
Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	log("watchdogs effects are real!!!")
	for key, data in ipairs(effect_positions_harbor) do
		World:effect_manager():spawn({
			effect = Idstring("effects/environment_smoke_blue_env"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)