if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "pbr2" then
	return
end
	
	local effect_positions_sky = {
		{
			position = Vector3(-3134, -3676, 129),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1963, -3782, 148),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-837, -3277, 168),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-44, -5647, 123),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-13, -4215, 198),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-48, -2407, 237),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-14, -759, 192),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(15, 859, 177),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(26, 2346, 160),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-44, 4496, 201),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-33, 5934, 147),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1464, 2894, 147),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2493, 3202, 221),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3625, 3567, 180),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3041, 1009, 114),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1722, 1053, 199),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1435, 749, 166),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1525, -251, 147),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3088, -365, 250),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3312, -144, 195),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3165, -2473, 137),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2628, -3127, 188),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(1105, -3163, 209),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4387, -3655, 103),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1936, -4653, 70),
			rotation = Rotation(0, 0, -0)
		},
	}

Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_sky) do
		World:effect_manager():spawn({
			effect = Idstring("effects/rain_fog"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)