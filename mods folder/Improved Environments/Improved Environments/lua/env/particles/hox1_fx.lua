if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "hox_1" then
	return
end

	local effect_positions_hoxgarage = {
		{
			position = Vector3(9061, 4136, -2266),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(10810, 6675, -2284),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8873, 6832, -2261),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11776, 6682, -2686),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(9314, 6779, -2689),
			rotation = Rotation(0, 0, -0)
		}
	}

Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_hoxgarage) do
		World:effect_manager():spawn({
			effect = Idstring("effects/rain_fog_blue_darker"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)