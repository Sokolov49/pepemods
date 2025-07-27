if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "firestarter_1" then
	return
end
	
	local effect_positions_airport = {
		{
			position = Vector3(-1743, -2897, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2971, -2964, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4812, -3453, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-576, -2950, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(558, -2987, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2009, -2935, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-339, -1429, 153),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(100, 504, 153),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-62, 2661, 82),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1083, 2253, 153),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2262, 2490, 154),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4054, 2787, 143),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5286, 4072, -3),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5429, 2946, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5107, 1622, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1496, 4577, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2765, 8639, 1093),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2269, 10103, 1093),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-7365, 4590, 1091),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-8518, 4463, 1090),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1599, 4018, 131),
			rotation = Rotation(0, 0, -0)
		}
	}
	
	local effect_positions_back = {
		{
			position = Vector3(-2880, 2938, -200),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3438, 2922, -200),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3435, 2258, -200),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3435, 1429, -200),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3432, 811, -200),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2747, 932, -200),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3373, 228, -200),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-173, 6291, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1449, 6082, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2526, 5880, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3659, 4463, 0),
			rotation = Rotation(0, 0, -0)
		}
	}

Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_airport) do
		World:effect_manager():spawn({
			effect = Idstring("effects/environment_smoke_blue_env"), --effects/rain_fog
			position = data.position,
			rotation = data.rotation
		})
	end
	
	for key, data in ipairs(effect_positions_back) do
		World:effect_manager():spawn({
			effect = Idstring("effects/environment_smoke_blue_env"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)