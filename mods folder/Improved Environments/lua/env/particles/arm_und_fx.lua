if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "arm_und" then
	return
end

	local effect_positions_silenthill = {
		{
			position = Vector3(-2762, 501, 279),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3068, 1870, 279),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3077, 3000, 279),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3681, 469, 279),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4994, 527, 299),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-6244, 511, 299),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-7061, 497, 279),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-8263, 501, 279),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3117, -937, 279),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3126, -2246, 279),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3122, -3610, 279),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3098, -5021, 279),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1448, 559, 304),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(102, 531, 304),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1741, 538, 304),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3582, 586, 279),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5076, 579, 299),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6754, 553, 374),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8524, 564, 279),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4356, 2689, 299),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4559, -1531, 373),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5693, -2084, 373),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-6234, -5428, 373),
			rotation = Rotation(0, 0, -0)
		},
	}
		
Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)	
	for key, data in ipairs(effect_positions_silenthill) do
		World:effect_manager():spawn({
			effect = Idstring("effects/rain_fog_blue_darker"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)