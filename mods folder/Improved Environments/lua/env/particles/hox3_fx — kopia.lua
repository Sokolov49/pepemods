if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "hox_3" then
	return
end
	
	local effect_positions_hoxrain = {
		{
			position = Vector3(688, 2245, -192),
			rotation = Rotation(90, 0, -0)
		},
		{
			position = Vector3(1438, 2013, -27),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2025, 1144, 0),
			rotation = Rotation(90, 0, -0)
		},
		{
			position = Vector3(2052, -520, 0),
			rotation = Rotation(90, 0, -0)
		},
		{
			position = Vector3(1590, 1284, 123),
			rotation = Rotation(90, 0, -0)
		},
		{
			position = Vector3(1723, -973, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-619, -1464, 0),
			rotation = Rotation(90, 0, -0)
		},
		{
			position = Vector3(-1665, -1456, 0),
			rotation = Rotation(90, 0, -0)
		},
		{
			position = Vector3(-1805, -11, -11),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1805, -11, -11),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1740, 762, -3),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1273, 1398, 1115),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-582, 1398, 1115),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(17, 1398, 1115),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(666, 1398, 1269),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(331, 1883, 1113),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-482, 1883, 1113),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1181, 1883, 1113),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1181, 1003, 1113),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-702, 1003, 1113),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-65, 1003, 1237),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-451, 9, 805),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3173, 1862, 680),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3173, 1862, 1238),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3159, -122, 586),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3159, -122, 1047),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(34, -2495, 931),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(34, -2495, 1422),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3129, -2446, 728),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3129, -2446, 1196),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3694, 1647, 253),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3694, 1647, 835),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-494, 2463, 545),
			rotation = Rotation(90, 0, -0)
		}
	}
	
	local effect_positions_hoxrainfog = {
		{
			position = Vector3(-5370, -987, 53),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5398, 3429, -60),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4674, 2800, -60),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4870, 1872, -48),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5079, 959, -33),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5031, -102, -38),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5220, -2321, 14),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5183, -3528, 163),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4217, -3357, 53),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4361, -2577, -45),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4281, -1405, -60),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4474, -338, -60),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4275, 648, -60),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4355, 1577, -60),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4146, 2308, -43),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3556, 1270, -30),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3522, -39, -47),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3609, -1224, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3612, -2543, -22),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2464, -2896, 75),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2804, -981, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2705, 343, -13),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2718, 1221, -117),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2817, -605, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3424, 189, 1),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2781, 575, 0),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3592, 1072, 23),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2771, 1890, 16),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3510, 1899, 45),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1113, 2639, -209),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(161, 2798, -474),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-542, 3037, -583),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1368, 2943, -553),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1742, 2585, -526),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2285, 1995, -422),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1881, 1769, -188),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-529, 2582, -145),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3436, -1164, 28),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4182, 122, 28),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4446, 1052, 6),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2766, -2264, 66),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1041, -2174, 31),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1739, -2146, 1),
			rotation = Rotation(0, 0, -0)
		}
	}

Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_hoxrain) do
		World:effect_manager():spawn({
			effect = Idstring("effects/rain_big"),
			position = data.position,
			rotation = data.rotation
		})
	end
	for key, data in ipairs(effect_positions_hoxrainfog) do
		World:effect_manager():spawn({
			effect = Idstring("effects/rain_fog_blue"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)