if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "watchdogs_1_night" then
	return
end
	
	local effect_positions_wd1 = {
		{
			position = Vector3(-2092, -1693, -6.814),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2092, -2544, -6.814),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2092, -3906, -6.814),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2092, -5745, -6.814),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3206, 11, -6.814),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4645, 11, -6.814),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2046, 1917, -6.814),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2046, -3687, -6.814),
			rotation = Rotation(0, 0, -0)
		}
	}

Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	log("watchdogs effects are real!!!")
	for key, data in ipairs(effect_positions_wd1) do
		World:effect_manager():spawn({
			effect = Idstring("effects/rain_fog"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)