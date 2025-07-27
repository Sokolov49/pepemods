if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "arena" then
	return
end
	
	local effect_positions_alesso = {
		{
			position = Vector3(-1837, 1886, -687),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2097, 2711, -706),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2074, 3484, -717),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3239, 2690, -691),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-882, 2703, -800),
			rotation = Rotation(0, 0, -0)
		}
	}

Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_alesso) do
		World:effect_manager():spawn({
			effect = Idstring("effects/environment_smoke_blue_env"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)