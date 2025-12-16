if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "roberts" then
	return
end

	local effect_positions_fogbank = {
		{
			position = Vector3(1892, -6419, -62),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(930, -6563, -78),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(70, -6501, -73),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-884, -6255, -28),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2442, -8566, -631),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-269, -8987, -631),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(399, -6804, -81),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1037, -6833, -81),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1320, -6449, -59),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1993, -6652, -60),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2106, -5457, -60),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2725, -5715, -60),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3324, -5540, -60),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3318, -6903, -60),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4172, -6744, -60),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3964, -5811, -60),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5109, -6591, 57),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4725, 5501, -8),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-6184, -6693, 162),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5472, -5348, 123),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-7612, -6709, 162),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-6607, -5394, 162),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-8927, -6365, 162),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-7032, -699, 162),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-8002, -377, 162),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-7239, 353, 162),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-8049, 971, 162),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-6349, 1100, 162),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4967, 1032, 162),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3962, 1535, -63),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3940, 2473, -63),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3282, 2274, -63),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2905, 3853, -63),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2195, 3808, -63),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1729, 4590, -63),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2578, 5028, -63),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2026, 5915, -63),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-284, 3456, -29),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(518, 3616, -62),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1309, 3603, -62),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2150, 3582, -76),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3242, 3474, -62),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3838, 3456, -55),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1465, 4403, -76),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2593, 4519, -63),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(490, 4621, -49),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3487, 4942, -55),
			rotation = Rotation(0, 0, -0)
		},
	}
		
Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_fogbank) do
		World:effect_manager():spawn({
			effect = Idstring("effects/rain_fog"), --effects/rain_fog
			position = data.position,
			rotation = data.rotation
		})
	end
end)