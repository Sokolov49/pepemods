if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "pines" then
	return
end

	local effect_positions_forest = {
		{
			position = Vector3(-4472, 8349, 2947),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2811, 9166, 2973),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2626, 10726, 2998),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1480, 9130, 3076),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1686, 7162, 3074),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(450, 5610, 3021),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2801, 12643, 3085),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1347, 10686, 3100),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-6178, 7894, 2941),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-7338, 8422, 2938),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-8795, 9303, 2974),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-8039, 8947, 3007),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-9194, 9960, 2946),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-9745, 10511, 2951),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-10075, 11215, 2930),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-10414, 12149, 2987),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-10388, 13216, 3263),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-286, 9580, 3052),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1135, 9199, 3052),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-44, 8384, 3052),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-6992, 14413, 4252),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-6905, 15764, 4252),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-6722, 16751, 4256),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-6508, 17937, 4384),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-5857, 19429, 4691),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-9025, 15105, 4252),
			rotation = Rotation(0, 0, -0)
		}
	}
		
Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)	
	for key, data in ipairs(effect_positions_forest) do
		World:effect_manager():spawn({
			effect = Idstring("effects/fog_dark_blue"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)