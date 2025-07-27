if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "nightclub" then
	return
end

	local effect_positions_nightcluboutdoors = {
		{
			position = Vector3(4249, -2480, 57),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4048, -1470, 55),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4958, -3398, 78),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6096, -3384, 76),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4298, -4398, 34),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4194, -5188, 44),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4291, -6068, 73),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4917, -5304, 79),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3620, -3357, 102),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2209, -3346, 77),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(879, -3395, 102),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-1336, -3386, 108),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-2265, -3386, 126),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(-3511, -3492, 138),
			rotation = Rotation(0, 0, -0)
		}
	}
	
	local effect_positions_nightclubmachine = {
		{
			position = Vector3(2779, -5599, 78),
			rotation = Rotation(88, -17, 0) --0, 0, -0,707107
		},
		{
			position = Vector3(2779, -5599, 78),
			rotation = Rotation(47, -17, 0) --0, 0, -0,707107
		},
		{
			position = Vector3(2779, -5599, 78),
			rotation = Rotation(137, -17, 0) --0, 0, -0,707107
		}
	}
	
	local effect_positions_nightclubsmallfog = {
		{
			position = Vector3(1658, -7238, -425),
			rotation = Rotation(0, 0, 0) --0, 0, -0,707107
		},
		{
			position = Vector3(1643, -7794, -425),
			rotation = Rotation(0, 0, 0) --0, 0, -0,707107
		},
		{
			position = Vector3(1523, -8440, 132),
			rotation = Rotation(0, 0, 0) --0, 0, -0,707107
		},
		{
			position = Vector3(2211, -8463, 135),
			rotation = Rotation(0, 0, 0) --0, 0, -0,707107
		}
	}
	
Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_nightclubmachine) do
		World:effect_manager():spawn({
			effect = Idstring("effects/payday2/environment/club_smoke_machine"),
			position = data.position,
			rotation = data.rotation
		})
	end
	
	for key, data in ipairs(effect_positions_nightcluboutdoors) do
		World:effect_manager():spawn({
			effect = Idstring("effects/rain_fog"),
			position = data.position,
			rotation = data.rotation
		})
	end
	
	for key, data in ipairs(effect_positions_nightclubsmallfog) do
		World:effect_manager():spawn({
			effect = Idstring("effects/environment_smoke_blue_env"),
			position = data.position,
			rotation = data.rotation
		})
	end
end)