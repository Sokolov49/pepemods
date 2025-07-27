if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "big" then
	return
end
	
	local effect_positions_bigbank = {
		{
			position = Vector3(-4505, -1093, -525),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-4420, -691, -919),
			rotation = Rotation(0, 0, -0)
		}
	}

Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_bigbank) do
		World:effect_manager():spawn({
			effect = Idstring("effects/environment_smoke_blue_env"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)