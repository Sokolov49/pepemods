if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "branchbank" then
	return
end

	local effect_positions_bank = {
		{
			position = Vector3(-7203, -6372, 87),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-10365, -800, 87),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4199, -799, 87),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(799, 6154, 89),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5422, 3657, 77),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-997, -6281, 81),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3763, -5730, 118),
			rotation = Rotation(0, 0, -0)
		},
	}
		
Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_bank) do
		World:effect_manager():spawn({
			effect = Idstring("effects/rain_fog"), --effects/rain_fog
			position = data.position,
			rotation = data.rotation
		})
	end
end)