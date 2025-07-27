if not Global.game_settings or not Global.game_settings.level_id or Global.game_settings.level_id ~= "crojob3" then
	return
end

	local effect_positions_forest = {
		{
			position = Vector3(9709, -243, 1873),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(881 -9074, 928),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2431, -8302, 950),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(9709, -243, 1873),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2431, -8302, 950),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(3562, -8323, 878),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5132, -8352, 768),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6465, -8382, 694),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(7518, -8349, 683),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8669, -8362, 738),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(10117, -8413, 708),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11616, -8362, 708),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(13220, -8409, 705),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(15238, -8382, 678),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(16747, -8569, 703),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(14127, -9916, 919),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(15896, -6249, 762),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(15077, -4055, 1500),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(15070, -2479, 1739),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(15378, -1158, 2063),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(16446, -475, 2400),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(15036, 207, 2585),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(16321, 1389, 3567),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(16308, 3594, 3964),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(15542, 4788, 4465),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(16212, 6421, 5145),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(17615, 5204, 4742),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(17682, 3507, 4031),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(17488, 1799, 3426),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5607, -6389, 760),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(7969, -6537, 719),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(10125, -6542, 635),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(12279, -5680, 460),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11246, -5061, 661),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(10032, -4789, 803),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8752, -5019, 923),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(6951, -5108, 859),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5075, -4646, 1002),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4465, -3350, 1337), --:sunglasses:
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(5751, -3359, 1220),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8580, -3297, 1148),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(10451, -3031, 1154),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(11907, -2812, 1280),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(2297, -2424, 1674),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(4488, -909, 1919),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(8143, 1117, 2171),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(10215, 1565, 2227),
			rotation = Rotation(0, 0, -0)
		},
		{
			position = Vector3(12371, -341, 1992),
			rotation = Rotation(0, 0, -0)
		},
	}
		
Hooks:PostHook(MissionScript, "activate", "ParticleEffectInHellsIsland_Setup", function(self, ...)
	for key, data in ipairs(effect_positions_forest) do
		World:effect_manager():spawn({
			effect = Idstring("effects/rain_fog"), --effects/rain_fog
			position = data.position,
			rotation = data.rotation
		})
	end
end)