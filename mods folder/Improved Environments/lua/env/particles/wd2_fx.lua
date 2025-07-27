if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "watchdogs_2" then
	return
end
	
	local effect_positions_wd2 = {
		{
			position = Vector3(114, 2565, 154),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1374, 3448, 154),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3451, 1456, 154),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(946, -850, 154),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(946, 1302, 154),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3727, 2611, 272),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4329, -1306, 217),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2836, 1697, 180),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4805, 1448, 171),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1121, 63, 142),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3719, 6631, 118),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4758, 4737, 114),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3655, 3237, 104),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3647, 286, 98),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-815, -2937, 121),
			rotation = Rotation(0, 0, -0)
		}
	}

Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	log("watchdogs effects are real!!!")
	for key, data in ipairs(effect_positions_wd2) do
		World:effect_manager():spawn({
			effect = Idstring("effects/environment_smoke_blue_env"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)