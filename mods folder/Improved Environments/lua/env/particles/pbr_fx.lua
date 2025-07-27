if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "pbr" then
	return
end

	local effect_positions_lockeoutdoor = {
		{
			position = Vector3(6208, 4943, -503),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6181, 3040, -473),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6018, 1097, -495),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4993, 121, -336),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(7829, 494, -388),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5599,-1229, -167),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3779, -747, -17),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4133, 1337, 25),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3014, 2166, -6),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2902, -637, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1730, 295, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2772, -2726, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2616, -4305, -5),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1139, -3376, -222),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-11035, -2218, 6999),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-9175, -2088, 7014),
			rotation = Rotation(0, 0, -0)
		},
	}
	
	local effect_positions_lockeindoor = {
		{
			position = Vector3(-1359, -3233, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1302, -6308, -302),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2533, -5839, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6208, 4943, -503),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1526, -4793, -303),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(791, -6283, -159),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3006, -5990, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-7173, -5873, -900),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-7324, -4511, -900),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-7286, -2155, -900),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-8471, -1012, -900),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-11282, -1249, -900),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-12610, -1143, -900),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-11091, -2891, -900),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-9968, -4126, -900),
			rotation = Rotation(0, 0, -0)
		}
	}
	
Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)	
	for key, data in ipairs(effect_positions_lockeoutdoor) do
		World:effect_manager():spawn({
			effect = Idstring("effects/rain_fog"),
			position = data.position,
			rotation = data.rotation
		})
	end
	
	for key, data in ipairs(effect_positions_lockeindoor) do
		World:effect_manager():spawn({
			effect = Idstring("effects/environment_smoke_blue_env"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)