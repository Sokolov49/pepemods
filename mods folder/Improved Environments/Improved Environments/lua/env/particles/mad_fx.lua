if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "mad" then
	return
end
	
	local effect_positions_jimmy = {
		{
			position = Vector3(-6587, -1309, 131),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6531, 153, 73),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4957, 367, 132),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5275, 2025, 81),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6339, 3092, 126),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6657, 4805, 175),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8474, -2033, 123),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(9088, -665, 184),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8597, 757, 252),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8514, 3258, 160),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8594, 5271, 316),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8201, 7056, 152),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(10135, 6089, 192),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11858, 5850, 264),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(12499, 3646, 524),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(10930, 3042, 238),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(10405, 229, 102),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11228, -4929, -755),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(12679, -3948, -696),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(13993, -4204, -779),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(15216, -4205, -900),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(15975, -4197, -916),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(17366, -4230, -907),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(13222, 5900, 117),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(14763, 5687, 48),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(17091, 5781, 97),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(19466, 3191, -881),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(17937, 3826, -666),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(16688, 4508, -329),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(18482, 6405, 174),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(20267, 1123, -1008),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(20634, 2245, -1014),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(21021, 3666, -1012),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(18146, -5339, -1003),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(18376, -4421, -1009),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(18007, -3592, -1013),
			rotation = Rotation(0, 0, -0)
		},
	}

Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_jimmy) do
		World:effect_manager():spawn({
			effect = Idstring("effects/rain_fog"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)