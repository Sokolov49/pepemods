if not Global.game_settings or not Global.game_settings.level_id or not Global.game_settings.level_id ~= "firestarter_2" then
	return
end

Fire2_Lights = Fire2_Lights or {}
if RequiredScript== "lib/managers/playermanager" then
	Hooks:PostHook(PlayerManager, "_setup", "Firestarter_Lights", function(self)
		local light_data_fire = {
			{ position = Vector3(250, 930, 29.915) },
			{ position = Vector3(750, 930, 29.915) },
			{ position = Vector3(1255, 930, 29.915) },
			{ position = Vector3(1731, 930, 29.915) },
			{ position = Vector3(1934, 495, 29.915) },
			{ position = Vector3(1934, 301, 29.915) },
			{ position = Vector3(-61, -1474, 333.915) },
			{ position = Vector3(-61, -1330, 333.915) }
		}
			
		for key, data in ipairs(light_data_fire) do
			LightOmni:new({
				enable = true,
				far_range = 211,
				position = data.position,
				color = Color("ffd0aa"),
				intensity = "candle"
			})
		end
	end)
end