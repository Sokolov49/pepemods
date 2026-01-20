if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "arm_hcm" then
	return
end

	local effect_positions_hcm = {
		{
			position = Vector3(-475, 536, 1025),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(415, 1422, 1025),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1689, 308, 1025),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3232, 191, 1025),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4410, 819, 1025),
			rotation = Rotation(0, 0, -0)
		}
	}
		
Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)	
	for key, data in ipairs(effect_positions_hcm) do
		World:effect_manager():spawn({
			effect = Idstring("effects/fog_faint_white"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)