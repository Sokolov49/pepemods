if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "jolly" then
	return
end
	
	local effect_positions_embers = {
		{
			position = Vector3(5712, 10674, 7),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5494, 9408, -10),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5550, 8333, -6),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3629, 10326, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3609, 11805, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(263, 9931, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1078, 10463, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1167, 12017, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-426, 10400, 405),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-443, 9012, 408),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-912, 7382, 490),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-384, 6399, 397),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1018, 8520, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2387, 8344, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3714, 8058, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2302, 6976, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(621, 6665, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1405, 5578, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1520, 3654, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1457, 2038, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1116, 787, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1091, -751, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1073, -2421, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2384, -1268, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3791, -1324, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3376, -2691, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5527, -942, -10),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3595, 607, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3554, 2383, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3455, 4638, -12),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4316, 6503, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5072, 5181, 6),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5564, 3495, -4),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5740, 1627, 7),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5528, -138, -9),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6890, 2324, 2),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8600, 2316, 2),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(10495, 2393, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11371, 1056, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11574, 3405, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11574, 5327, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11662, 7847, 11),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11226, 9669, 11),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(13315, 8942, 11),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(14590, 9864, 11),
			rotation = Rotation(0, 0, -0)
		}
	}


	local effect_positions_fires = {
		{
			position = Vector3(12396, 10598, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11195, 10518, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2298, -1276, 809),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2935, -312, 766),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2615, 2256, 674),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2880, 2793, 660),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2659, 6851, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2715, 7650, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(12904, 6458, 28),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(13476, 6913, 28),
			rotation = Rotation(0, 0, -0)
		},
	}

Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_embers) do
		World:effect_manager():spawn({
			effect = Idstring("effects/embers_only3"),
			position = data.position,
			rotation = data.rotation
		})
	end
	
	for key, data in ipairs(effect_positions_fires) do
		World:effect_manager():spawn({
			effect = Idstring("effects/fire_w_embers"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)