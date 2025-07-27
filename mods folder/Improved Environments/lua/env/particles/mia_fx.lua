if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "mia_1" then
	return
end
	
	local effect_positions_mayonnaise = {
		{
			position = Vector3(-5043, -4653, 28),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5042, -3301, 33),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5041, -1946, 3),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4997, -484, 26),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5033, 1104, 24),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5021, 2305, 44),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5808, 295, 37),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3803, 274, 30),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2515, 303, 41),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-454, 286, 42),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1145, 314, 43),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2755, 327, 33),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4049, 310, 38),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5467, 275, 67),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6936, 1561, 86),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(7343, 189, 47),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6950, -964, 51),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2975, -2047, 67),
			rotation = Rotation(0, 0, -0)
		}
	}

Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_mayonnaise) do
		World:effect_manager():spawn({
			effect = Idstring("effects/environment_smoke_blue_env"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)