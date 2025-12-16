if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "glace" then
	return
end
	
	local effect_positions_green = {
		{
			position = Vector3(-1419, -4183, 5650),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1460, -5596, 5902),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1374, -7025, 5905),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1316, -99411, 5965),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1466, -11617, 5967),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1347, -13774, 5980),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1468, -16044, 5944),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1404, -18060, 5924),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1238, -19647, 5926),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-917, -21296, 5924),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1225, -23120, 5926),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1268, -25451, 5889),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1427, -27808, 5863),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1497, -29525, 5698),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-957, -31225, 5799),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1544, -33223, 5804),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1604, -34989, 5724),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1411, -36605, 5643),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1539, -38305, 5634),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1545, -40188, 5613),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1544, -43161, 5546),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1474, -45944, 5517),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1389, -49470, 5248),
			rotation = Rotation(0, 0, -0)
		},
	}

Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_green) do
		World:effect_manager():spawn({
			effect = Idstring("effects/environment_smoke_blue_env"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)