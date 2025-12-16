if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "sand" then
	return
end

	local effect_positions_bigfog = {
		{
			position = Vector3(-6386, -4265, 1),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3599, -4578, 1),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1466, -6149, -8),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2360, -6849, -8),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4125, -3215, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5382, -3323, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1716, -3461, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1615, -1899, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-580, -1763, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(922, -2305, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(506, -250, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-746, 324, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(395, 1737, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-755, 1427, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6432, 433, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5720, 1192, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6459, -2614, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6823, -6335, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8414, -6494, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8165, -2461, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8025, -245, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11508, -128, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11451, -2467, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11482, -3637, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(10963, -7292, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(12290, -7282, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(13352, 2396, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(14269, 3925, -79),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(13767, 868, -300),
			rotation = Rotation(0, 0, -0)
		},
	}
		
	local effect_positions_smallfog = {
		{
			position = Vector3(-6444, -7159, 1),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-6968, -7774, 1),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-7157, -7006, -8),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-8396, -7555, -8),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-8352, -7124, -8),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1868, 1993, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3191, 2128, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5767, 1842, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5764, 239, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(18452, -4998, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(17656, -5575, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(17414, -4403, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(16011, -3367, -300),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(16958, -6700, -300),
			rotation = Rotation(0, 0, -0)
		},
	}
		
Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_bigfog) do
		World:effect_manager():spawn({
			effect = Idstring("effects/rain_fog"), --effects/rain_fog
			position = data.position,
			rotation = data.rotation
		})
	end

	for key, data in ipairs(effect_positions_smallfog) do
		World:effect_manager():spawn({
			effect = Idstring("effects/environment_smoke_blue_env"), --effects/rain_fog
			position = data.position,
			rotation = data.rotation
		})
	end
end)