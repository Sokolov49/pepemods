if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "watchdogs_1" then
	return
end
	
	local effect_positions_wd1 = {
		{
			position = Vector3(-1993, 109, 36),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1993, 3972, 36),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1993, 6040, 36),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1993, 7748, 36),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4174, -14, 36),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-6599, -14, 36),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2073, -2357, 36),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2073, -4638, 36),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2073, -6127, 36),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(644, -956, 82),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(364, 706, 82),
			rotation = Rotation(0, 0, -0)
		}
	}

Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	log("watchdogs effects are real!!!")
	for key, data in ipairs(effect_positions_wd1) do
		World:effect_manager():spawn({
			effect = Idstring("effects/fog_faint_white_in_sunlight"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)