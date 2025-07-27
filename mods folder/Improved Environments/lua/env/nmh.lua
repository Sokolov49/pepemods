if not Global.game_settings or not Global.game_settings.level_id or not Global.game_settings.level_id == "nmh" then
	return
end

nmhRED_Lights = nmhRED_Lights or {}
if RequiredScript== "lib/managers/playermanager" then
	Hooks:PostHook(PlayerManager, "_setup", "NoMercyRedLight", function(self)
		local highlight = 800
		local littlelight = 200
		local light_data = {
			{Vector3(238, 809, 221.541), highlight},
			{Vector3(-713, 518, 245.541), highlight},
			{Vector3(-1207, -720, 222.541), highlight},
			{Vector3(-1332, 2003, 250.541), highlight},
			{Vector3(-282, 2996, 250.541), littlelight},
			{Vector3(122, 2498, 230.541), littlelight},
			{Vector3(-1745, 516, 250.541), littlelight},
			{Vector3(-2843, 659, 212.541), littlelight},
			{Vector3(138, 2459, 240.541), highlight},
			{Vector3(1078, 1483, 250.541), littlelight},
			{Vector3(2196, -195, 250.541), littlelight},
			{Vector3(1855, 643, 250.541), littlelight},
			{Vector3(2466, 163, 221.541), littlelight},
			{Vector3(3374, 848, 250.541), littlelight},
			{Vector3(0, -705, 221.541), littlelight}
		}
			
		for i = 1, 15 do
			nmhRED_Lights[i] = LightOmni:new({
				enable = false,
				far_range = light_data[i][2],
				position = light_data[i][1],
				color = Color("df1111"),
				intensity = "searchlight"
			})
		end
	end)
elseif RequiredScript== "lib/managers/mission/elementdisableunit" then
	local ElementDisableUnit_on_executed = ElementDisableUnit.on_executed
	function ElementDisableUnit:on_executed(instigator, ...)
		ElementDisableUnit_on_executed(self, instigator, ...)
		
		if self._id == 103301 and self:editor_name() == "disable_lights" then
			local environment = "units/pd2_dlc_nmh/environments/newer_darkness"
			local has_file = DB:has(Idstring("environment"), environment)
			
			if has_file then
				managers.viewport:set_default_environment(environment, 1, nil)
			end
			
			DelayedCalls:Add("delayedcalls_nmh_redlight", 2 , function()
				for _, light in ipairs(nmhRED_Lights) do
					light:set_enable(true)
				end
			end)
		end
	end
elseif RequiredScript== "lib/managers/mission/elementenableunit" then
	local ElementEnableUnit_on_executed = ElementEnableUnit.on_executed
	function ElementEnableUnit:on_executed(instigator, ...)
		ElementEnableUnit_on_executed(self, instigator, ...)
		
		if self._id == 103300 and self:editor_name() == "enable_lights" then
			for _, light in ipairs(nmhRED_Lights) do
				light:set_enable(false)
			end
			
			local environment = "units/pd2_dlc_nmh/environments/nmh_environment_01"
			managers.viewport:set_default_environment(environment, 1, nil)
		end
	end
end