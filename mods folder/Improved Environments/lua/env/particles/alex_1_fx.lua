if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "alex_1" then
	return
end
	
	local effect_positions_rat1 = {
		{
			position = Vector3(593, -1342, 1096),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(910, 212, 1225),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2116, 2035, 1305),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2527, 3239, 1555),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1238, 3315, 1523),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(245, 2564, 1633),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2470, -1367, 1091),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1766, -4434, 967),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2084, -430, 1348),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1292, 253, 1302),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1046, 1786, 1477),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2400, 2018, 1594),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(632, 1440, 1302),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1452, -2133, 1247),
			rotation = Rotation(0, 0, -0)
		}
	}

Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	log("watchdogs effects are real!!!")
	for key, data in ipairs(effect_positions_rat1) do
		World:effect_manager():spawn({
			effect = Idstring("effects/environment_smoke_blue_env"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)