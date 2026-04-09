
local mod_path = tostring(improv._mod_path or "mods/Improved Environments")

--this thing picks a random number between 0 and 1, making 2 possible results
local rnd2 = math.floor(math.random() * 2)
local rnd3 = math.floor(math.random() * 3)
local rnd4 = math.floor(math.random() * 4)
local rnd5 = math.floor(math.random() * 5)
local rnd6 = math.floor(math.random() * 6)
local rnd7 = math.floor(math.random() * 7)
local rnd8 = math.floor(math.random() * 8)
local rnd9 = math.floor(math.random() * 9)
local rnd9 = math.floor(math.random() * 10)
local rnd10 = math.floor(math.random() * 11)

	Hooks:Add("BeardLibCreateScriptDataMods", "TODCallBeardLibSequenceFuncs", function()
		if not Global.load_level then 
			return
		end
		local level_id = Global.game_settings.level_id

		if level_id == "dark" then
		end
		if level_id == "branchbank" then
				if rnd5 == 0 then
					if envsmod._settings.color_gradings then
						local branchbank_colors = { 'color_nice', 'color_payday_classic', 'color_payday' }
						local branchbank_colors_randomized = branchbank_colors[ math.random( 1, #branchbank_colors ) ]
						tweak_data.levels.branchbank.env_params = { color_grading = branchbank_colors_randomized }
					else return end -- this one kinda sucks
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_midday_alt.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 1 then
					if envsmod._settings.color_gradings then
						local branchbank_colors = { 'color_nice', 'color_payday_classic', 'color_bhd_classic', 'color_payday' }
						local branchbank_colors_randomized = branchbank_colors[ math.random( 1, #branchbank_colors ) ]
						tweak_data.levels.branchbank.env_params = { color_grading = branchbank_colors_randomized }
					else return end -- this one sucks as well!!
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_cloudy.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_beta2.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 3 then
					if envsmod._settings.color_gradings then
						local branchbank_colors = { 'color_nice', 'color_payday_classic', 'color_xxxgen', 'color_payday' }
						local branchbank_colors_randomized = branchbank_colors[ math.random( 1, #branchbank_colors ) ]
						tweak_data.levels.branchbank.env_params = { color_grading = branchbank_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_beta.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 4 then
					if envsmod._settings.color_gradings then
						local branchbank_colors = { 'color_nice', 'color_payday_classic', 'color_xgen', 'color_payday' }
						local branchbank_colors_randomized = branchbank_colors[ math.random( 1, #branchbank_colors ) ]
						tweak_data.levels.branchbank.env_params = { color_grading = branchbank_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_default.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "big" then
			if rnd2 == 0 then
				if envsmod._settings.color_gradings then
					local big_colors = { 'color_bhd_classic', 'color_payday_classic' }
					local big_colors_randomized = big_colors[ math.random( 1, #big_colors ) ]
					tweak_data.levels.big.env_params = { color_grading = big_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/bigbank.custom_xml", "custom_xml", "environments/pd2_env_bigbank/pd2_env_bigbank", "environment")
			elseif rnd2 == 1 then
				if envsmod._settings.color_gradings then
					local big_colors = { 'color_bhd_classic', 'color_payday_classic' }
					local big_colors_randomized = big_colors[ math.random( 1, #big_colors ) ]
					tweak_data.levels.big.env_params = { color_grading = big_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/bigbank_2.custom_xml", "custom_xml", "environments/pd2_env_bigbank/pd2_env_bigbank", "environment")
			end
		end
		if level_id == "arena" then
			if rnd4 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arena1.custom_xml", "custom_xml", "environments/pd2_are_corridors_bright/pd2_are_corrisors_bright", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arena1.custom_xml", "custom_xml", "environments/pd2_are_lobby/pd2_are_lobby", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arena1.custom_xml", "custom_xml", "environments/pd2_are_atrium/pd2_are_atrium", "environment")
				elseif rnd4 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arena2.custom_xml", "custom_xml", "environments/pd2_are_corridors_bright/pd2_are_corrisors_bright", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arena2.custom_xml", "custom_xml", "environments/pd2_are_lobby/pd2_are_lobby", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arena2.custom_xml", "custom_xml", "environments/pd2_are_atrium/pd2_are_atrium", "environment")
				elseif rnd4 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arena3.custom_xml", "custom_xml", "environments/pd2_are_corridors_bright/pd2_are_corrisors_bright", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arena3.custom_xml", "custom_xml", "environments/pd2_are_lobby/pd2_are_lobby", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arena3.custom_xml", "custom_xml", "environments/pd2_are_atrium/pd2_are_atrium", "environment")
				elseif rnd4 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arena4.custom_xml", "custom_xml", "environments/pd2_are_corridors_bright/pd2_are_corrisors_bright", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arena4.custom_xml", "custom_xml", "environments/pd2_are_lobby/pd2_are_lobby", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arena4.custom_xml", "custom_xml", "environments/pd2_are_atrium/pd2_are_atrium", "environment")
			end
		end
		if level_id == "firestarter_1" then
			if rnd5 == 0 then
					if envsmod._settings.color_gradings then
						local firestarter_1_colors = { 'color_nice', 'color_payday_classic', 'color_xgen', 'color_xxxgen', 'color_payday' }
						local firestarter_1_colors_randomized = firestarter_1_colors[ math.random( 1, #firestarter_1_colors ) ]
						tweak_data.levels.firestarter_1.env_params = { color_grading = firestarter_1_colors_randomized }
					else return end
					tweak_data.levels.firestarter_1.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/firestarter1_1.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
				elseif rnd5 == 1 then
					if envsmod._settings.color_gradings then
						local firestarter_1_colors = { 'color_xxxgen', 'color_bhd_classic', 'color_heat_classic', 'color_payday_classic', 'color_payday' }
						local firestarter_1_colors_randomized = firestarter_1_colors[ math.random( 1, #firestarter_1_colors ) ]
						tweak_data.levels.firestarter_1.env_params = { color_grading = firestarter_1_colors_randomized }
					else return end
					tweak_data.levels.firestarter_1.flashlights_on = false
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/firestarter1_2.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
				elseif rnd5 == 2 then
					if envsmod._settings.color_gradings then
						local firestarter_1_colors = { 'color_bhd', 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_payday' }
						local firestarter_1_colors_randomized = firestarter_1_colors[ math.random( 1, #firestarter_1_colors ) ]
						tweak_data.levels.firestarter_1.env_params = { color_grading = firestarter_1_colors_randomized }
					else return end
					tweak_data.levels.firestarter_1.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/firestarter1_3.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
				elseif rnd5 == 3 then
					if envsmod._settings.color_gradings then
						local firestarter_1_colors = { 'color_bhd', 'color_xgen', 'color_xxxgen', 'color_payday_classic', 'color_bhd_classic', 'color_payday' }
						local firestarter_1_colors_randomized = firestarter_1_colors[ math.random( 1, #firestarter_1_colors ) ]
						tweak_data.levels.firestarter_1.env_params = { color_grading = firestarter_1_colors_randomized }
					else return end
					tweak_data.levels.firestarter_1.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/firestarter1_4.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
				elseif rnd5 == 4 then
					tweak_data.levels.firestarter_1.flashlights_on = false
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/firestarter_1_morning.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			end
		end
		if level_id == "firestarter_2" then 	
			if rnd2 == 0 then
					if envsmod._settings.color_gradings then
						local firestarter_2_colors = { 'color_xxxgen', 'color_payday_classic', 'color_payday' }
						local firestarter_2_colors_randomized = firestarter_2_colors[ math.random( 1, #firestarter_2_colors ) ]
						tweak_data.levels.firestarter_2.env_params = { color_grading = firestarter_2_colors_randomized }
					else return end
					tweak_data.levels.firestarter_2.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/firestarter2_1.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
				elseif rnd2 == 1 then
					if envsmod._settings.color_gradings then
						local firestarter_2_colors = { 'color_bhd', 'color_xgen', 'color_xxxgen', 'color_bhd_classic', 'color_heat_classic', 'color_payday' }
						local firestarter_2_colors_randomized = firestarter_2_colors[ math.random( 1, #firestarter_2_colors ) ]
						tweak_data.levels.firestarter_2.env_params = { color_grading = firestarter_2_colors_randomized }
					else return end
					tweak_data.levels.firestarter_2.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/firestarter2_2.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			end
		end
		if level_id == "firestarter_3" then 
			if rnd5 == 0 then
					if envsmod._settings.color_gradings then
						local firestarter_3_colors = { 'color_nice', 'color_payday_classic', 'color_payday' }
						local firestarter_3_colors_randomized = firestarter_3_colors[ math.random( 1, #firestarter_3_colors ) ]
						tweak_data.levels.firestarter_3.env_params = { color_grading = firestarter_3_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_midday_alt.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 1 then
					if envsmod._settings.color_gradings then
						local firestarter_3_colors = { 'color_nice', 'color_bhd_classic' ,'color_payday_classic', 'color_payday' }
						local firestarter_3_colors_randomized = firestarter_3_colors[ math.random( 1, #firestarter_3_colors ) ]
						tweak_data.levels.firestarter_3.env_params = { color_grading = firestarter_3_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_cloudy.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_beta2.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 3 then
					if envsmod._settings.color_gradings then
						local firestarter_3_colors = { 'color_nice', 'color_xxxgen' ,'color_payday_classic', 'color_payday' }
						local firestarter_3_colors_randomized = firestarter_3_colors[ math.random( 1, #firestarter_3_colors ) ]
						tweak_data.levels.firestarter_3.env_params = { color_grading = firestarter_3_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_beta.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 4 then
					if envsmod._settings.color_gradings then
						local firestarter_3_colors = { 'color_nice', 'color_xgen' ,'color_payday_classic', 'color_payday' }
						local firestarter_3_colors_randomized = firestarter_3_colors[ math.random( 1, #firestarter_3_colors ) ]
						tweak_data.levels.firestarter_3.env_params = { color_grading = firestarter_3_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_default.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "mad" then
			tweak_data.levels.mad.flashlights_on = true
				if rnd2 == 0 then
					if envsmod._settings.color_gradings then
						local mad_colors = { 'color_bhd_classic', 'color_heat', 'color_payday_classic', 'color_payday' }
						local mad_colors_randomized = mad_colors[ math.random( 1, #mad_colors ) ]
						tweak_data.levels.mad.env_params = { color_grading = mad_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/madoutside.custom_xml", "custom_xml", "environments/pd2_mad_outdoor/pd2_mad_outdoor", "environment")
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/madinside.custom_xml", "custom_xml", "environments/pd2_mad_lab/pd2_mad_lab", "environment")
				elseif rnd2 == 1 then
					if envsmod._settings.color_gradings then
						local mad_colors = { 'color_bhd_classic', 'color_heat', 'color_payday_classic', 'color_payday' }
						local mad_colors_randomized = mad_colors[ math.random( 1, #mad_colors ) ]
						tweak_data.levels.mad.env_params = { color_grading = mad_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/madoutside2.custom_xml", "custom_xml", "environments/pd2_mad_outdoor/pd2_mad_outdoor", "environment")
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/madinside.custom_xml", "custom_xml", "environments/pd2_mad_lab/pd2_mad_lab", "environment")
			end
		end
		if level_id == "jewelry_store" then
			if rnd4 == 0 then
					if envsmod._settings.color_gradings then
						local jewelry_store_colors = { 'color_nice', 'color_bhd_classic', 'color_heat', 'color_payday_classic', 'color_payday' }
						local jewelry_store_colors_randomized = jewelry_store_colors[ math.random( 1, #jewelry_store_colors ) ]
						tweak_data.levels.jewelry_store.env_params = { color_grading = jewelry_store_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/jewelrystore_betalike.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd4 == 1 then
					if envsmod._settings.color_gradings then
						local jewelry_store_colors = { 'color_nice', 'color_bhd_classic', 'color_matrix_classic', 'color_payday_classic', 'color_payday' }
						local jewelry_store_colors_randomized = jewelry_store_colors[ math.random( 1, #jewelry_store_colors ) ]
						tweak_data.levels.jewelry_store.env_params = { color_grading = jewelry_store_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/jew_1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd4 == 2 then
					if envsmod._settings.color_gradings then
						local jewelry_store_colors = { 'color_nice', 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local jewelry_store_colors_randomized = jewelry_store_colors[ math.random( 1, #jewelry_store_colors ) ]
						tweak_data.levels.jewelry_store.env_params = { color_grading = jewelry_store_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/jew_2.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd4 == 3 then
					if envsmod._settings.color_gradings then
						local jewelry_store_colors = { 'color_nice', 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local jewelry_store_colors_randomized = jewelry_store_colors[ math.random( 1, #jewelry_store_colors ) ]
						tweak_data.levels.jewelry_store.env_params = { color_grading = jewelry_store_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/jewelrystore_1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "hox_3" then
			tweak_data.levels.hox_3.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/hox_3_new_v2_indoor.custom_xml", "custom_xml", "environments/pd2_mcmansion_night/pd2_mcmansion_night", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/hox_3_new_v2_indoor.custom_xml", "custom_xml", "environments/pd2_mcmansion_indoor_basement/pd2_mcmansion_indoor_basement", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/hox_3_new_v2_indoor.custom_xml", "custom_xml", "environments/pd2_mcmansion_indoor_dark/pd2_mcmansion_indoor_dark", "environment")
		end
		if level_id == "shoutout_raid" then
			if rnd2 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/shoutout_raid.custom_xml", "custom_xml", "environments/pd2_shoutoutraid_indoor/pd2_shoutoutraid_indoor", "environment")
			elseif rnd2 == 1 then
			end
		end
		if level_id == "red2" then
			if rnd4 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/red2-1.custom_xml", "custom_xml", "environments/pd2_red/pd2_red", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/red2-1.custom_xml", "custom_xml", "environments/pd2_red_indoor/pd2_red_indoor", "environment")
				elseif rnd4 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/red2-2.custom_xml", "custom_xml", "environments/pd2_red/pd2_red", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/red2-2.custom_xml", "custom_xml", "environments/pd2_red_indoor/pd2_red_indoor", "environment")
				elseif rnd4 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/red2-3.custom_xml", "custom_xml", "environments/pd2_red/pd2_red", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/red2-3.custom_xml", "custom_xml", "environments/pd2_red_indoor/pd2_red_indoor", "environment")
				elseif rnd4 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/red2-4.custom_xml", "custom_xml", "environments/pd2_red/pd2_red", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/red2-4.custom_xml", "custom_xml", "environments/pd2_red_indoor/pd2_red_indoor", "environment")
			end
		end
		if level_id == "watchdogs_1" then
			if rnd5 == 0 then
				if envsmod._settings.color_gradings then
					tweak_data.levels.watchdogs_1.env_params = { color_grading = "color_payday_classic" }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/watchdogs_1_1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 1 then
				if envsmod._settings.color_gradings then
					tweak_data.levels.watchdogs_1.env_params = { color_grading = "color_bhd_classic" }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/watchdogs_1_2.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/watchdogs_1_3.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 3 then
				if envsmod._settings.color_gradings then
					tweak_data.levels.watchdogs_1.env_params = { color_grading = "color_payday_classic" }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/family_3.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 4 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/watchdogs_1_4.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "watchdogs_1_night" then
			if rnd3 == 0 then
					if envsmod._settings.color_gradings then
						local watchdogs_1_night_colors = { 'color_heat_classic', 'color_bhd_classic' }
						local watchdogs_1_night_colors_randomized = watchdogs_1_night_colors[ math.random( 1, #watchdogs_1_night_colors ) ]
						tweak_data.levels.watchdogs_1_night.env_params = { color_grading = watchdogs_1_night_colors_randomized }
					else return end
					tweak_data.levels.watchdogs_1_night.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/watchdogs_1_1_night.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/watchdogs_1_1_night.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd3 == 1 then
					if envsmod._settings.color_gradings then
						local watchdogs_1_night_colors = { 'color_heat_classic', 'color_bhd_classic' }
						local watchdogs_1_night_colors_randomized = watchdogs_1_night_colors[ math.random( 1, #watchdogs_1_night_colors ) ]
						tweak_data.levels.watchdogs_1_night.env_params = { color_grading = watchdogs_1_night_colors_randomized }
					else return end
					tweak_data.levels.watchdogs_1_night.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/watchdogs_1_2_night.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/watchdogs_1_2_night.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd3 == 2 then
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/watchdogs_1_4_night.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/watchdogs_1_4_night.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "watchdogs_2" then
			if rnd3 == 0 then
				if envsmod._settings.color_gradings then
					local watchdogs_2_colors = { 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_heat', 'color_payday_classic', 'color_payday' }
					local watchdogs_2_colors_randomized = watchdogs_2_colors[ math.random( 1, #watchdogs_2_colors ) ]
					tweak_data.levels.watchdogs_2.env_params = { color_grading = watchdogs_2_colors_randomized }
				else return end
				tweak_data.levels.watchdogs_2.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/watchdogs_2_1_night.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			end
		end
		if level_id == "watchdogs_2_day" then
			if rnd3 == 0 then
					if envsmod._settings.color_gradings then
						local watchdogs_2_colors = { 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_heat', 'color_payday_classic', 'color_payday' }
						local watchdogs_2_colors_randomized = watchdogs_2_colors[ math.random( 1, #watchdogs_2_colors ) ]
						tweak_data.levels.watchdogs_2.env_params = { color_grading = watchdogs_2_colors_randomized }
					else return end
					tweak_data.levels.watchdogs_2.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/watchdogs_2_1.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
				elseif rnd3 == 1 then
					if envsmod._settings.color_gradings then
						local watchdogs_2_colors = { 'color_bhd_classic', 'color_heat', 'color_payday_classic', 'color_payday' }
						local watchdogs_2_colors_randomized = watchdogs_2_colors[ math.random( 1, #watchdogs_2_colors ) ]
						tweak_data.levels.watchdogs_2.env_params = { color_grading = watchdogs_2_colors_randomized }
					else return end
					tweak_data.levels.watchdogs_2.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/watchdogs_2_2.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
				elseif rnd3 == 2 then
					if envsmod._settings.color_gradings then
						local watchdogs_2_colors = { 'color_nice', 'color_matrix_classic', 'color_bhd_classic', 'color_heat', 'color_payday_classic', 'color_payday' }
						local watchdogs_2_colors_randomized = watchdogs_2_colors[ math.random( 1, #watchdogs_2_colors ) ]
						tweak_data.levels.watchdogs_2.env_params = { color_grading = watchdogs_2_colors_randomized }
					else return end
					tweak_data.levels.watchdogs_2.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/wd2_3.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			end
		end
		if level_id == "alex_1" then
			if rnd4 == 0 then
				if envsmod._settings.color_gradings then
					tweak_data.levels.alex_1.env_params = { color_grading = "color_heat_classic" }
				else return end
				tweak_data.levels.alex_1.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_1.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
				elseif rnd4 == 1 then
					if envsmod._settings.color_gradings then
						tweak_data.levels.alex_1.env_params = { color_grading = "color_payday_classic" }
					else return end
				tweak_data.levels.alex_1.flashlights_on = false
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_2.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
				elseif rnd4 == 2 then
					if envsmod._settings.color_gradings then
						tweak_data.levels.alex_1.env_params = { color_grading = "color_nice_classic" }
					else return end
				tweak_data.levels.alex_1.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_4.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
				elseif rnd4 == 3 then
					if envsmod._settings.color_gradings then
						tweak_data.levels.alex_1.env_params = { color_grading = "color_bhd_classic" }
					else return end
				tweak_data.levels.alex_1.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_5.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
			end
		end
		if level_id == "alex_2" then
			if envsmod._settings.color_gradings then
				local alex_2_colors = { 'color_bhd_classic', 'color_payday_classic', 'color_xgen', 'color_xxxgen', 'color_payday' }
				local alex_2_colors_randomized = alex_2_colors[ math.random( 1, #alex_2_colors ) ]
				tweak_data.levels.alex_2.env_params = { color_grading = alex_2_colors_randomized }
			else return end
			tweak_data.levels.alex_2.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/alex_2_falloff.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
		end
		if level_id == "alex_3" then
			if envsmod._settings.color_gradings then
				local alex_3_colors = { 'color_bhd_classic', 'color_heat', 'color_payday' }
				local alex_3_colors_randomized = alex_3_colors[ math.random( 1, #alex_3_colors ) ]
				tweak_data.levels.alex_3.env_params = { color_grading = alex_3_colors_randomized }
			else return end
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/alex_3_falloff.custom_xml", "custom_xml", "environments/pd2_env_rat_night_stage_3/pd2_env_rat_night_stage_3", "environment")
		end
		if level_id == "dah" then
			if rnd5 == 0 then
				if envsmod._settings.color_gradings then
					local dah_colors = { 'color_bhd_classic', 'color_payday_classic', 'color_nice_classic', 'color_matrix_classic', 'color_xgen', 'color_payday' }
					local dah_colors_randomized = dah_colors[ math.random( 1, #dah_colors ) ]
					tweak_data.levels.dah.env_params = { color_grading = dah_colors_randomized }
				else return end
				tweak_data.levels.dah.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/dah_1.custom_xml", "custom_xml", "units/pd2_dlc_dah/environments/pd2_dah_outdoor/pd2_dah_outdoor", "environment")
			elseif rnd5 == 1 then
				if envsmod._settings.color_gradings then
					local dah_colors = { 'color_bhd_classic', 'color_payday_classic', 'color_nice_classic', 'color_matrix_classic', 'color_xxxgen', 'color_xgen', 'color_payday' }
					local dah_colors_randomized = dah_colors[ math.random( 1, #dah_colors ) ]
					tweak_data.levels.dah.env_params = { color_grading = dah_colors_randomized }
				else return end
				tweak_data.levels.dah.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/dah_2.custom_xml", "custom_xml", "units/pd2_dlc_dah/environments/pd2_dah_outdoor/pd2_dah_outdoor", "environment")
			elseif rnd5 == 2 then
				if envsmod._settings.color_gradings then
					local dah_colors = { 'color_bhd_classic', 'color_payday_classic', 'color_nice_classic', 'color_matrix_classic', 'color_xxxgen', 'color_xgen', 'color_payday' }
					local dah_colors_randomized = dah_colors[ math.random( 1, #dah_colors ) ]
					tweak_data.levels.dah.env_params = { color_grading = dah_colors_randomized }
				else return end
				tweak_data.levels.dah.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/dah_3.custom_xml", "custom_xml", "units/pd2_dlc_dah/environments/pd2_dah_outdoor/pd2_dah_outdoor", "environment")
			elseif rnd5 == 3 then
				if envsmod._settings.color_gradings then
					local dah_colors = { 'color_bhd_classic', 'color_payday_classic', 'color_nice_classic', 'color_matrix_classic', 'color_xxxgen', 'color_xgen', 'color_payday' }
					local dah_colors_randomized = dah_colors[ math.random( 1, #dah_colors ) ]
					tweak_data.levels.dah.env_params = { color_grading = dah_colors_randomized }
				else return end
				tweak_data.levels.dah.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/dah_4.custom_xml", "custom_xml", "units/pd2_dlc_dah/environments/pd2_dah_outdoor/pd2_dah_outdoor", "environment")
			elseif rnd5 == 4 then
				if envsmod._settings.color_gradings then
					local dah_colors = { 'color_bhd_classic', 'color_payday_classic', 'color_nice_classic', 'color_matrix_classic', 'color_xxxgen', 'color_xgen', 'color_payday' }
					local dah_colors_randomized = dah_colors[ math.random( 1, #dah_colors ) ]
					tweak_data.levels.dah.env_params = { color_grading = dah_colors_randomized }
				else return end
				tweak_data.levels.dah.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/dah_5.custom_xml", "custom_xml", "units/pd2_dlc_dah/environments/pd2_dah_outdoor/pd2_dah_outdoor", "environment")
			elseif rnd6 == 5 then
				if envsmod._settings.color_gradings then
					local dah_colors = { 'color_bhd_classic', 'color_payday_classic', 'color_nice_classic', 'color_matrix_classic', 'color_xxxgen', 'color_xgen', 'color_payday' }
					local dah_colors_randomized = dah_colors[ math.random( 1, #dah_colors ) ]
					tweak_data.levels.dah.env_params = { color_grading = dah_colors_randomized }
				else return end
				tweak_data.levels.dah.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/dah_6.custom_xml", "custom_xml", "units/pd2_dlc_dah/environments/pd2_dah_outdoor/pd2_dah_outdoor", "environment")
			end
		end
		if level_id == "four_stores" then
			if rnd4 == 0 then
					if envsmod._settings.color_gradings then
						local four_stores_colors = { 'color_bhd_classic', 'color_payday_classic', 'color_nice_classic', 'color_matrix_classic', 'color_payday' }
						local four_stores_colors_randomized = four_stores_colors[ math.random( 1, #four_stores_colors ) ]
						tweak_data.levels.four_stores.env_params = { color_grading = four_stores_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/fourstores.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd4 == 1 then
					if envsmod._settings.color_gradings then
						local four_stores_colors = { 'color_bhd_classic', 'color_payday_classic', 'color_xxxgen_classic', 'color_matrix_classic', 'color_payday' }
						local four_stores_colors_randomized = four_stores_colors[ math.random( 1, #four_stores_colors ) ]
						tweak_data.levels.four_stores.env_params = { color_grading = four_stores_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd4 == 2 then
					if envsmod._settings.color_gradings then
						local four_stores_colors = { 'color_bhd_classic', 'color_nice', 'color_payday' }
						local four_stores_colors_randomized = four_stores_colors[ math.random( 1, #four_stores_colors ) ]
						tweak_data.levels.four_stores.env_params = { color_grading = four_stores_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/family_3.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd4 == 3 then
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "kosugi" then
			if rnd2 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/kosugi_1.custom_xml", "custom_xml", "environments/pd2_kosugi/pd2_kosugi", "environment")
				elseif rnd2 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/kosugi_2.custom_xml", "custom_xml", "environments/pd2_kosugi/pd2_kosugi", "environment")
			end
		end
		if level_id == "rat" then
			if rnd4 == 0 then
				if envsmod._settings.color_gradings then
					tweak_data.levels.rat.env_params = { color_grading = "color_heat_classic" }
				else return end
				tweak_data.levels.rat.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_1.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
				elseif rnd4 == 1 then
					if envsmod._settings.color_gradings then
						tweak_data.levels.rat.env_params = { color_grading = "color_payday_classic" }
					else return end
				tweak_data.levels.rat.flashlights_on = false
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_2.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
				elseif rnd4 == 2 then
					if envsmod._settings.color_gradings then
						tweak_data.levels.rat.env_params = { color_grading = "color_nice_classic" }
					else return end
				tweak_data.levels.rat.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_4.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
				elseif rnd4 == 3 then
					if envsmod._settings.color_gradings then
						tweak_data.levels.rat.env_params = { color_grading = "color_bhd_classic" }
					else return end
				tweak_data.levels.rat.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_5.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
			end
		end
		if level_id == "nmh" then
			if envsmod._settings.color_gradings then
				local nmh_colors = { 'color_bhd_classic', 'color_payday_classic', 'color_xgen', 'color_xxxgen', 'color_payday' }
				local nmh_colors_randomized = nmh_colors[ math.random( 1, #nmh_colors ) ]
				tweak_data.levels.nmh.env_params = { color_grading = nmh_colors_randomized }
			else return end
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/nmh_green.custom_xml", "custom_xml", "units/pd2_dlc_nmh/environments/nmh_environment_01", "environment")
		end
		if level_id == "haunted" then
			if rnd6 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/haunted.custom_xml", "custom_xml", "environments/pd2_env_framing_frame_stage_2/pd2_env_framing_frame_stage_2", "environment")
				elseif rnd6 == 1 then
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/safehouse_nightmare1.custom_xml", "custom_xml", "environments/pd2_env_framing_frame_stage_2/pd2_env_framing_frame_stage_2", "environment")
				elseif rnd6 == 2 then
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/safehouse_nightmare2.custom_xml", "custom_xml", "environments/pd2_env_framing_frame_stage_2/pd2_env_framing_frame_stage_2", "environment")
				elseif rnd6 == 3 then
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/safehouse_nightmare_hell.custom_xml", "custom_xml", "environments/pd2_env_framing_frame_stage_2/pd2_env_framing_frame_stage_2", "environment")
				elseif rnd6 == 4 then
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/safehouse_nightmare_milk.custom_xml", "custom_xml", "environments/pd2_env_framing_frame_stage_2/pd2_env_framing_frame_stage_2", "environment")
				elseif rnd6 == 5 then
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/safehouse_nightmare_very_red.custom_xml", "custom_xml", "environments/pd2_env_framing_frame_stage_2/pd2_env_framing_frame_stage_2", "environment")
			end
		end
		if level_id == "help" then
			tweak_data.levels.help.flashlights_on = true
			if rnd3 == 0 then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/help-haunted.custom_xml", "custom_xml", "environments/pd2_env_help/pd2_env_help_main", "environment")
				elseif rnd3 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/help_1.custom_xml", "custom_xml", "environments/pd2_env_help/pd2_env_help_main", "environment")
				elseif rnd3 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/help_2.custom_xml", "custom_xml", "environments/pd2_env_help/pd2_env_help_main", "environment")
			end
		end
		if level_id == "nail" then
			tweak_data.levels.nail.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/lab-haunted.custom_xml", "custom_xml", "environments/env_nail/env_nail", "environment")
		end
		if level_id == "pines" then
			if rnd3 == 0 then
				tweak_data.levels.pines.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/pines1_2.custom_xml", "custom_xml", "environments/pd2_env_pines/pd2_env_pines", "environment")
				elseif rnd3 == 1 then
				tweak_data.levels.pines.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/pines1_3.custom_xml", "custom_xml", "environments/pd2_env_pines/pd2_env_pines", "environment")
				elseif rnd3 == 2 then
				tweak_data.levels.pines.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/pines1_4.custom_xml", "custom_xml", "environments/pd2_env_pines/pd2_env_pines", "environment")
			end
		end
		if level_id == "cane" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/candy-cane-cold.custom_xml", "custom_xml", "environments/pd2_env_cane/pd2_env_cane", "environment")
		end
		if level_id == "pal" then
			if rnd4 == 0 then
				if envsmod._settings.color_gradings then
					tweak_data.levels.pal.env_params = { color_grading = "color_payday_classic" }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_1.custom_xml", "custom_xml", "environments/suburbia_env/suburbia_env", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_1.custom_xml", "custom_xml", "environments/pd2_pal_indoor/pd2_pal_indoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_1.custom_xml", "custom_xml", "environments/pd2_pal_outdoor/pd2_pal_outdoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_1_basement.custom_xml", "custom_xml", "environments/pd2_pal_basement/pd2_pal_basement", "environment")
				elseif rnd4 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_2.custom_xml", "custom_xml", "environments/suburbia_env/suburbia_env", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_2.custom_xml", "custom_xml", "environments/pd2_pal_indoor/pd2_pal_indoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_2.custom_xml", "custom_xml", "environments/pd2_pal_outdoor/pd2_pal_outdoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_2_basement.custom_xml", "custom_xml", "environments/pd2_pal_basement/pd2_pal_basement", "environment")
				elseif rnd4 == 2 then
				if envsmod._settings.color_gradings then
					tweak_data.levels.pal.env_params = { color_grading = "color_payday_classic" }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_3.custom_xml", "custom_xml", "environments/suburbia_env/suburbia_env", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_3.custom_xml", "custom_xml", "environments/pd2_pal_indoor/pd2_pal_indoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_3.custom_xml", "custom_xml", "environments/pd2_pal_outdoor/pd2_pal_outdoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_3_basement.custom_xml", "custom_xml", "environments/pd2_pal_basement/pd2_pal_basement", "environment")
				elseif rnd4 == 3 then
				if envsmod._settings.color_gradings then
					tweak_data.levels.pal.env_params = { color_grading = "color_payday_classic" }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_5.custom_xml", "custom_xml", "environments/suburbia_env/suburbia_env", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_5.custom_xml", "custom_xml", "environments/pd2_pal_indoor/pd2_pal_indoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_5.custom_xml", "custom_xml", "environments/pd2_pal_outdoor/pd2_pal_outdoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_5_basement.custom_xml", "custom_xml", "environments/pd2_pal_basement/pd2_pal_basement", "environment")
			end
		end
		if level_id == "jolly" then
			if rnd5 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/jolly-1.custom_xml", "custom_xml", "environments/pd2_lxa_river/pd2_lxa_river", "environment")
				elseif rnd5 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/jolly-2.custom_xml", "custom_xml", "environments/pd2_lxa_river/pd2_lxa_river", "environment")
				elseif rnd5 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/jolly-3.custom_xml", "custom_xml", "environments/pd2_lxa_river/pd2_lxa_river", "environment")
				elseif rnd5 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/jolly-4.custom_xml", "custom_xml", "environments/pd2_lxa_river/pd2_lxa_river", "environment")
				elseif rnd5 == 4 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/jolly-5.custom_xml", "custom_xml", "environments/pd2_lxa_river/pd2_lxa_river", "environment")
			end
		end
		if level_id == "spa" then
			if envsmod._settings.color_gradings then
				local spa_colors = { 'color_nice_classic', 'color_xxxgen', 'color_bhd_classic', 'color_matrix_classic', 'color_heat_classic', 'color_payday_classic' }
				local spa_colors_randomized = spa_colors[ math.random( 1, #spa_colors ) ]
				tweak_data.levels.spa.env_params = { color_grading = spa_colors_randomized }
			else return end
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/brooklyn10-10.custom_xml", "custom_xml", "environments/pd2_env_spa/pd2_env_spa_basement", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/brooklyn10-10.custom_xml", "custom_xml", "environments/pd2_env_spa/pd2_env_spa_a", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/brooklyn10-10.custom_xml", "custom_xml", "environments/pd2_env_spa/pd2_env_spa_outside", "environment")
		end
		if level_id == "trai" then
			if envsmod._settings.color_gradings then
				local trai_colors = { 'color_nice_classic', 'color_bhd_classic', 'color_payday' }
				local trai_colors_randomized = trai_colors[ math.random( 1, #trai_colors ) ]
				tweak_data.levels.trai.env_params = { color_grading = trai_colors_randomized }
			else return end
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/train.custom_xml", "custom_xml", "environments/pd2_env_trai/pd2_env_trai_int_train_warehouse_01", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/train_inside.custom_xml", "custom_xml", "environments/pd2_env_trai/pd2_env_trai_ext_01_norain", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/train.custom_xml", "custom_xml", "environments/pd2_env_trai/pd2_env_trai_ext_01", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/train_inside.custom_xml", "custom_xml", "environments/pd2_env_trai/pd2_env_trai_int_01", "environment")
		end
		if level_id == "glace" then
			if envsmod._settings.color_gradings then
				local glace_colors = { 'color_bhd_classic', 'color_heat_classic', 'color_payday_classic' }
				local glace_colors_randomized = glace_colors[ math.random( 1, #glace_colors ) ]
				tweak_data.levels.glace.env_params = { color_grading = glace_colors_randomized }
			else return end
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/green_bridge_outside3.custom_xml", "custom_xml", "environments/pd2_glace/glace_outside", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/green_bridge_inside3.custom_xml", "custom_xml", "environments/pd2_glace/glace_inside", "environment")
		end
		if level_id == "hvh" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/killroom_trippy.custom_xml", "custom_xml", "environments/pd2_env_hvh/hvh_default", "environment")
		end
		if level_id == "election_day_1" then
			if rnd4 == 0 then
					if envsmod._settings.color_gradings then
						local election_day_1_colors = { 'color_heat', 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_heat_classic', 'color_payday_classic', 'color_payday' }
						local election_day_1_colors_randomized = election_day_1_colors[ math.random( 1, #election_day_1_colors ) ]
						tweak_data.levels.election_day_1.env_params = { color_grading = election_day_1_colors_randomized }
					else return end
					tweak_data.levels.election_day_1.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/election1.custom_xml", "custom_xml", "environments/pd2_env_ed1/pd2_env_ed1", "environment")
				elseif rnd4 == 1 then
					if envsmod._settings.color_gradings then
						local election_day_1_colors = { 'color_heat', 'color_payday_classic', 'color_payday' }
						local election_day_1_colors_randomized = election_day_1_colors[ math.random( 1, #election_day_1_colors ) ]
						tweak_data.levels.election_day_1.env_params = { color_grading = election_day_1_colors_randomized }
					else return end
					tweak_data.levels.election_day_1.flashlights_on = false
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/election_day_1_2.custom_xml", "custom_xml", "environments/pd2_env_ed1/pd2_env_ed1", "environment")
				elseif rnd4 == 2 then
					if envsmod._settings.color_gradings then
						local election_day_1_colors = { 'color_xgen', 'color_matrix_classic', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local election_day_1_colors_randomized = election_day_1_colors[ math.random( 1, #election_day_1_colors ) ]
						tweak_data.levels.election_day_1.env_params = { color_grading = election_day_1_colors_randomized }
					else return end
					tweak_data.levels.election_day_1.flashlights_on = false
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/election_day_1_3.custom_xml", "custom_xml", "environments/pd2_env_ed1/pd2_env_ed1", "environment")
				elseif rnd4 == 3 then
					if envsmod._settings.color_gradings then
						local election_day_1_colors = { 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local election_day_1_colors_randomized = election_day_1_colors[ math.random( 1, #election_day_1_colors ) ]
						tweak_data.levels.election_day_1.env_params = { color_grading = election_day_1_colors_randomized }
					else return end
					tweak_data.levels.election_day_1.flashlights_on = false
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/election_day_1_4.custom_xml", "custom_xml", "environments/pd2_env_ed1/pd2_env_ed1", "environment")
			end
		end
		if level_id == "election_day_2" then
			if rnd4 == 0 then
					tweak_data.levels.election_day_2.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/election_day_2_1.custom_xml", "custom_xml", "environments/pd2_env_ed2/pd2_env_ed2", "environment")
				elseif rnd4 == 1 then
					tweak_data.levels.election_day_2.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/election_day_2_2.custom_xml", "custom_xml", "environments/pd2_env_ed2/pd2_env_ed2", "environment")
				elseif rnd4 == 2 then
					tweak_data.levels.election_day_2.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/election_day_2_3.custom_xml", "custom_xml", "environments/pd2_env_ed2/pd2_env_ed2", "environment")
				elseif rnd4 == 3 then
					tweak_data.levels.election_day_2.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/election_day_2_4.custom_xml", "custom_xml", "environments/pd2_env_ed2/pd2_env_ed2", "environment")
			end
		end
		if level_id == "gallery" then
			if envsmod._settings.color_gradings then
				local gallery_colors = { 'color_heat', 'color_xgen', 'color_xxxgen', 'color_bhd_classic', 'color_heat_classic', 'color_payday_classic' }
				local gallery_colors_randomized = gallery_colors[ math.random( 1, #gallery_colors ) ]
				tweak_data.levels.gallery.env_params = { color_grading = gallery_colors_randomized }
			else return end
			tweak_data.levels.gallery.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/framing1.custom_xml", "custom_xml", "environments/pd2_env_framing_frame_stage_2/pd2_env_framing_frame_stage_2", "environment")
		end
		if level_id == "framing_frame_1" then
			if envsmod._settings.color_gradings then
				local framing_frame_1_colors = { 'color_heat', 'color_xgen', 'color_xxxgen', 'color_bhd_classic', 'color_heat_classic', 'color_payday_classic' }
				local framing_frame_1_colors_randomized = framing_frame_1_colors[ math.random( 1, #framing_frame_1_colors ) ]
				tweak_data.levels.framing_frame_1.env_params = { color_grading = framing_frame_1_colors_randomized }
			else return end
			tweak_data.levels.framing_frame_1.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/framing1.custom_xml", "custom_xml", "environments/pd2_env_framing_frame_stage_2/pd2_env_framing_frame_stage_2", "environment")
		end
		if level_id == "framing_frame_2" then
			if envsmod._settings.color_gradings then
				local framing_frame_2_colors = { 'color_xgen', 'color_xxxgen', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
				local framing_frame_2_colors_randomized = framing_frame_2_colors[ math.random( 1, #framing_frame_2_colors ) ]
				tweak_data.levels.framing_frame_2.env_params = { color_grading = framing_frame_2_colors_randomized }
			else return end
			tweak_data.levels.framing_frame_2.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/framing2.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
		end
		if level_id == "framing_frame_3" then
			if envsmod._settings.color_gradings then
				local framing_frame_3_colors = { 'color_nice_classic', 'color_xgen', 'color_xxxgen', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
				local framing_frame_3_colors_randomized = framing_frame_3_colors[ math.random( 1, #framing_frame_3_colors ) ]
				tweak_data.levels.framing_frame_3.env_params = { color_grading = framing_frame_3_colors_randomized }
			else return end
			tweak_data.levels.framing_frame_3.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/framing3.custom_xml", "custom_xml", "environments/pd2_env_framing_frame_stage_3/pd2_env_framing_frame_stage_3", "environment")
		end
		if level_id == "peta2" then
			if rnd2 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/goatsim2_2_evening.custom_xml", "custom_xml", "environments/pd2_peta2_new_try/pd2_peta2_new_try", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/goatsim2_2_evening.custom_xml", "custom_xml", "environments/pd2_peta2_new_try_outside/pd2_peta2_new_try_outside", "environment")
			elseif rnd2 == 1 then
			end
		end
		if level_id == "dinner" then
			if envsmod._settings.color_gradings then
				local dinner_colors = { 'color_nice_classic', 'color_payday_classic', 'color_payday' }
				local dinner_colors_randomized = dinner_colors[ math.random( 1, #dinner_colors ) ]
				tweak_data.levels.dinner.env_params = { color_grading = dinner_colors_randomized }
			else return end
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/slaughterhouse_indoors.custom_xml", "custom_xml", "environments/pd2_dinner_office/pd2_dinner_office", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/slaughterhouse_indoors.custom_xml", "custom_xml", "environments/pd2_dinner_slaughterhouse/pd2_dinner_slaughterhouse", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/slaughterhouse_outdoors.custom_xml", "custom_xml", "environments/pd2_dinner_outdoor_middle/pd2_dinner_outdoor_middle", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/slaughterhouse_indoors.custom_xml", "custom_xml", "environments/pd2_dinner_room/pd2_dinner_room", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/slaughterhouse_outdoors.custom_xml", "custom_xml", "environments/pd2_dinner_outdoor/pd2_dinner_outdoor", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/slaughterhouse_outdoors.custom_xml", "custom_xml", "environments/pd2_dinner_outdoor_ending/pd2_dinner_outdoor_ending", "environment")
		end
		if level_id == "roberts" then
			if rnd3 == 0 then
					if envsmod._settings.color_gradings then
						tweak_data.levels.roberts.env_params = { color_grading = "color_nice_classic" }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/roberts_1.custom_xml", "custom_xml", "environments/env_csgo_de_bank/env_csgo_de_bank", "environment")
				elseif rnd3 == 1 then
					if envsmod._settings.color_gradings then
						local roberts_colors = { 'color_nice_classic', 'color_xxxgen', 'color_payday_classic', 'color_payday' }
						local roberts_colors_randomized = roberts_colors[ math.random( 1, #roberts_colors ) ]
						tweak_data.levels.roberts.env_params = { color_grading = roberts_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/roberts_2.custom_xml", "custom_xml", "environments/env_csgo_de_bank/env_csgo_de_bank", "environment")
				elseif rnd3 == 2 then
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/roberts_3.custom_xml", "custom_xml", "environments/env_csgo_de_bank/env_csgo_de_bank", "environment")
			end
		end
		if level_id == "escape_cafe_day" then 
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/fourstores.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
		end
		if level_id == "escape_park_day" then 
			if rnd5 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_midday_alt.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_cloudy.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_beta2.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_beta.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 4 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_default.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "escape_street" then 
			if rnd5 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_midday_alt.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_cloudy.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_beta2.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_beta.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 4 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_default.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "moon" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/moon.custom_xml", "custom_xml", "environments/env_core_inside_01/env_core_inside_01", "environment")
		end
		if level_id == "arm_hcm" then
			if rnd2 == 0 then
				if envsmod._settings.color_gradings then
					local arm_hcm_colors = { 'color_nice_classic', 'color_payday_classic', 'color_payday' }
					local arm_hcm_colors_randomized = arm_hcm_colors[ math.random( 1, #arm_hcm_colors ) ]
					tweak_data.levels.arm_hcm.env_params = { color_grading = arm_hcm_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_hcm.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			elseif rnd2 == 1 then
				if envsmod._settings.color_gradings then
					local arm_hcm_colors = { 'color_nice_classic', 'color_payday_classic', 'color_payday' }
					local arm_hcm_colors_randomized = arm_hcm_colors[ math.random( 1, #arm_hcm_colors ) ]
					tweak_data.levels.arm_hcm.env_params = { color_grading = arm_hcm_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_hcm2.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "arm_par" then
			if rnd2 == 0 then
				if envsmod._settings.color_gradings then
					local arm_par_colors = { 'color_nice_classic', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
					local arm_par_colors_randomized = arm_par_colors[ math.random( 1, #arm_par_colors ) ]
					tweak_data.levels.arm_par.env_params = { color_grading = arm_par_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_par_1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			elseif rnd2 == 1 then
				if envsmod._settings.color_gradings then
					local arm_par_colors = { 'color_payday_classic', 'color_payday' }
					local arm_par_colors_randomized = arm_par_colors[ math.random( 1, #arm_par_colors ) ]
					tweak_data.levels.arm_par.env_params = { color_grading = arm_par_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_par_2.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "arm_cro" then 
			if rnd4 == 0 then
				if envsmod._settings.color_gradings then
					local arm_cro_colors = { 'color_nice_classic', 'color_xgen', 'color_xxxgen', 'color_payday_classic', 'color_payday' }
					local arm_cro_colors_randomized = arm_cro_colors[ math.random( 1, #arm_cro_colors ) ]
					tweak_data.levels.arm_cro.env_params = { color_grading = arm_cro_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_cro_1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			elseif rnd4 == 1 then
				if envsmod._settings.color_gradings then
					local arm_cro_colors = { 'color_nice_classic', 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_payday_classic', 'color_payday' }
					local arm_cro_colors_randomized = arm_cro_colors[ math.random( 1, #arm_cro_colors ) ]
					tweak_data.levels.arm_cro.env_params = { color_grading = arm_cro_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_cro_2.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			elseif rnd4 == 2 then
				if envsmod._settings.color_gradings then
					local arm_cro_colors = { 'color_bhd_classic', 'color_matrix_classic', 'color_payday_classic', 'color_payday' }
					local arm_cro_colors_randomized = arm_cro_colors[ math.random( 1, #arm_cro_colors ) ]
					tweak_data.levels.arm_cro.env_params = { color_grading = arm_cro_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_cro_3.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			elseif rnd4 == 3 then
				if envsmod._settings.color_gradings then
					local arm_cro_colors = { 'color_bhd_classic', 'color_heat_classic', 'color_matrix_classic', 'color_payday_classic', 'color_payday' }
					local arm_cro_colors_randomized = arm_cro_colors[ math.random( 1, #arm_cro_colors ) ]
					tweak_data.levels.arm_cro.env_params = { color_grading = arm_cro_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_cro_4.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "arm_und" then
				if rnd8 == 0 then
					if envsmod._settings.color_gradings then
						local arm_und_colors = { 'color_xgen', 'color_xxxgen', 'color_colorful', 'color_bhd_classic', 'color_heat_classic', 'color_payday_classic', 'color_payday' }
						local arm_und_colors_randomized = arm_und_colors[ math.random( 1, #arm_und_colors ) ]
						tweak_data.levels.arm_und.env_params = { color_grading = arm_und_colors_randomized }
					else return end
					tweak_data.levels.arm_und.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und_bf3.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
				elseif rnd8 == 1 then
					if envsmod._settings.color_gradings then
						local arm_und_colors = { 'color_nice_classic', 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_colorful', 'color_bhd_classic', 'color_heat_classic', 'color_payday_classic', 'color_payday' }
						local arm_und_colors_randomized = arm_und_colors[ math.random( 1, #arm_und_colors ) ]
						tweak_data.levels.arm_und.env_params = { color_grading = arm_und_colors_randomized }
					else return end
					tweak_data.levels.arm_und.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und_bf4.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
				elseif rnd8 == 2 then
					if envsmod._settings.color_gradings then
						local arm_und_colors = { 'color_nice_classic', 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local arm_und_colors_randomized = arm_und_colors[ math.random( 1, #arm_und_colors ) ]
						tweak_data.levels.arm_und.env_params = { color_grading = arm_und_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und_clouds.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
				elseif rnd8 == 3 then
					if envsmod._settings.color_gradings then
						local arm_und_colors = { 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_heat_classic', 'color_payday_classic', 'color_payday' }
						local arm_und_colors_randomized = arm_und_colors[ math.random( 1, #arm_und_colors ) ]
						tweak_data.levels.arm_und.env_params = { color_grading = arm_und_colors_randomized }
					else return end
					tweak_data.levels.arm_und.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und_dark.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
				elseif rnd8 == 4 then
					if envsmod._settings.color_gradings then
						local arm_und_colors = { 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local arm_und_colors_randomized = arm_und_colors[ math.random( 1, #arm_und_colors ) ]
						tweak_data.levels.arm_und.env_params = { color_grading = arm_und_colors_randomized }
					else return end
					tweak_data.levels.arm_und.flashlights_on = false
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und_morning.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
				elseif rnd8 == 5 then
					if envsmod._settings.color_gradings then
						local arm_und_colors = { 'color_nice_classic', 'color_heat', 'color_heat_classic', 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local arm_und_colors_randomized = arm_und_colors[ math.random( 1, #arm_und_colors ) ]
						tweak_data.levels.arm_und.env_params = { color_grading = arm_und_colors_randomized }
					else return end
					tweak_data.levels.arm_und.flashlights_on = false
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und1.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
				elseif rnd8 == 6 then
					if envsmod._settings.color_gradings then
						local arm_und_colors = { 'color_heat_classic', 'color_heat', 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local arm_und_colors_randomized = arm_und_colors[ math.random( 1, #arm_und_colors ) ]
						tweak_data.levels.arm_und.env_params = { color_grading = arm_und_colors_randomized }
					else return end
					tweak_data.levels.arm_und.flashlights_on = true
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und2.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
				elseif rnd8 == 7 then
					if envsmod._settings.color_gradings then
						local arm_und_colors = { 'color_nice_classic', 'color_bhd', 'color_heat', 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local arm_und_colors_randomized = arm_und_colors[ math.random( 1, #arm_und_colors ) ]
						tweak_data.levels.arm_und.env_params = { color_grading = arm_und_colors_randomized }
					else return end
					tweak_data.levels.arm_und.flashlights_on = false
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und_sunset2.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
			end
		end
		if level_id == "arm_fac" then
			if rnd2 == 0 then
				if envsmod._settings.color_gradings then
					local arm_fac_colors = { 'color_nice_classic', 'color_xxxgen', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
					local arm_fac_colors_randomized = arm_fac_colors[ math.random( 1, #arm_fac_colors ) ]
					tweak_data.levels.arm_fac.env_params = { color_grading = arm_fac_colors_randomized }
				else return end
				tweak_data.levels.arm_fac.flashlights_on = true
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/arm_fac2.custom_xml", "custom_xml", "environments/pd2_env_n2/pd2_env_n2", "environment")
			elseif rnd2 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_fac_day.custom_xml", "custom_xml", "environments/pd2_env_n2/pd2_env_n2", "environment")
				tweak_data.levels.arm_fac.flashlights_on = false
			end
		end
		if level_id == "rvd1" then
			if rnd2 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/reservoirdogs1_1.custom_xml", "custom_xml", "units/pd2_dlc_rvd/environments/pd2_env_rvd/pd2_env_rvd_day1_inside", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/reservoirdogs1_1.custom_xml", "custom_xml", "units/pd2_dlc_rvd/environments/pd2_env_rvd/pd2_env_rvd_day1_exterior", "environment")
				elseif rnd2 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/reservoirdogs1_2.custom_xml", "custom_xml", "units/pd2_dlc_rvd/environments/pd2_env_rvd/pd2_env_rvd_day1_inside", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/reservoirdogs1_2.custom_xml", "custom_xml", "units/pd2_dlc_rvd/environments/pd2_env_rvd/pd2_env_rvd_day1_exterior", "environment")
			end
		end
		if level_id == "rvd2" then
			if rnd2 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rvd2_1.custom_xml", "custom_xml", "units/pd2_dlc_rvd/environments/pd2_env_rvd/pd2_env_rvd_day2_inside", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rvd2_1.custom_xml", "custom_xml", "units/pd2_dlc_rvd/environments/pd2_env_rvd/pd2_env_rvd_day2_exterior", "environment")
				elseif rnd2 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rvd2_2.custom_xml", "custom_xml", "units/pd2_dlc_rvd/environments/pd2_env_rvd/pd2_env_rvd_day2_inside", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rvd2_2.custom_xml", "custom_xml", "units/pd2_dlc_rvd/environments/pd2_env_rvd/pd2_env_rvd_day2_exterior", "environment")
			end
		end
		if level_id == "mia_1" then
			if rnd4 == 0 then
					if envsmod._settings.color_gradings then
						local mia_1_colors = { 'color_bhd_classic', 'color_heat_classic', 'color_payday_classic', 'color_payday' }
						local mia_1_colors_randomized = mia_1_colors[ math.random( 1, #mia_1_colors ) ]
						tweak_data.levels.mia_1.env_params = { color_grading = mia_1_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/sunsetmia.custom_xml", "custom_xml", "environments/pd2_hlm1/pd2_hlm1", "environment")
					tweak_data.levels.mia_1.flashlights_on = true
				elseif rnd4 == 1 then
					if envsmod._settings.color_gradings then
						local mia_1_colors = { 'color_nice_classic', 'color_payday' }
						local mia_1_colors_randomized = mia_1_colors[ math.random( 1, #mia_1_colors ) ]
						tweak_data.levels.mia_1.env_params = { color_grading = mia_1_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/miamidusk.custom_xml", "custom_xml", "environments/pd2_hlm1/pd2_hlm1", "environment")
					tweak_data.levels.mia_1.flashlights_on = false
				elseif rnd4 == 2 then
					if envsmod._settings.color_gradings then
						local mia_1_colors = { 'color_bhd_classic', 'color_heat_classic', 'color_payday_classic', 'color_payday' }
						local mia_1_colors_randomized = mia_1_colors[ math.random( 1, #mia_1_colors ) ]
						tweak_data.levels.mia_1.env_params = { color_grading = mia_1_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/miamievening.custom_xml", "custom_xml", "environments/pd2_hlm1/pd2_hlm1", "environment")
					tweak_data.levels.mia_1.flashlights_on = true
				elseif rnd4 == 3 then
					if envsmod._settings.color_gradings then
						local mia_1_colors = { 'color_bhd_classic', 'color_heat', 'color_xgen', 'color_nice_classic', 'color_payday_classic', 'color_payday' }
						local mia_1_colors_randomized = mia_1_colors[ math.random( 1, #mia_1_colors ) ]
						tweak_data.levels.mia_1.env_params = { color_grading = mia_1_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/sunsetv4mia.custom_xml", "custom_xml", "environments/pd2_hlm1/pd2_hlm1", "environment")
					tweak_data.levels.mia_1.flashlights_on = true
			end
		end
		if level_id == "mia_2" then 
			if rnd5 == 0 then
					if envsmod._settings.color_gradings then
						local mia_2_colors = { 'color_payday_classic', 'color_payday' }
						local mia_2_colors_randomized = mia_2_colors[ math.random( 1, #mia_2_colors ) ]
						tweak_data.levels.mia_2.env_params = { color_grading = mia_2_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank1.custom_xml", "custom_xml", "environments/pd2_res/pd2_res", "environment")
				elseif rnd5 == 1 then
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_orange.custom_xml", "custom_xml", "environments/pd2_res/pd2_res", "environment")
				elseif rnd5 == 2 then
					if envsmod._settings.color_gradings then
						local mia_2_colors = { 'color_nice_classic', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local mia_2_colors_randomized = mia_2_colors[ math.random( 1, #mia_2_colors ) ]
						tweak_data.levels.mia_2.env_params = { color_grading = mia_2_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/family_3.custom_xml", "custom_xml", "environments/pd2_res/pd2_res", "environment")
				elseif rnd5 == 3 then
					if envsmod._settings.color_gradings then
						local mia_2_colors = { 'color_bhd_classic', 'color_xgen', 'color_nice_classic', 'color_payday_classic', 'color_payday' }
						local mia_2_colors_randomized = mia_2_colors[ math.random( 1, #mia_2_colors ) ]
						tweak_data.levels.mia_2.env_params = { color_grading = mia_2_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/jew_2.custom_xml", "custom_xml", "environments/pd2_res/pd2_res", "environment")
				elseif rnd5 == 4 then
			end
		end
		if level_id == "kenaz" then
			if rnd6 == 0 then
					if envsmod._settings.color_gradings then
						local kenaz_colors = { 'color_xgen', 'color_xxxgen', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local kenaz_colors_randomized = kenaz_colors[ math.random( 1, #kenaz_colors ) ]
						tweak_data.levels.kenaz.env_params = { color_grading = kenaz_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/kenazblue.custom_xml", "custom_xml", "environments/casino/env_casino_01", "environment")
				elseif rnd6 == 1 then
					if envsmod._settings.color_gradings then
						local kenaz_colors = { 'color_nice', 'color_xxxgen', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local kenaz_colors_randomized = kenaz_colors[ math.random( 1, #kenaz_colors ) ]
						tweak_data.levels.kenaz.env_params = { color_grading = kenaz_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/kenazdark.custom_xml", "custom_xml", "environments/casino/env_casino_01", "environment")
				elseif rnd6 == 2 then
					if envsmod._settings.color_gradings then
						local kenaz_colors = { 'color_xxxgen', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local kenaz_colors_randomized = kenaz_colors[ math.random( 1, #kenaz_colors ) ]
						tweak_data.levels.kenaz.env_params = { color_grading = kenaz_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/kenazfoggy.custom_xml", "custom_xml", "environments/casino/env_casino_01", "environment")
				elseif rnd6 == 3 then
					if envsmod._settings.color_gradings then
						local kenaz_colors = { 'color_xgen', 'color_nice', 'color_xxxgen', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local kenaz_colors_randomized = kenaz_colors[ math.random( 1, #kenaz_colors ) ]
						tweak_data.levels.kenaz.env_params = { color_grading = kenaz_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/kenazorange.custom_xml", "custom_xml", "environments/casino/env_casino_01", "environment")
				elseif rnd6 == 4 then
					if envsmod._settings.color_gradings then
						local kenaz_colors = { 'color_nice', 'color_bhd', 'color_xxxgen', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
						local kenaz_colors_randomized = kenaz_colors[ math.random( 1, #kenaz_colors ) ]
						tweak_data.levels.kenaz.env_params = { color_grading = kenaz_colors_randomized }
					else return end
					BeardLib:ReplaceScriptData(mod_path .. "scriptdata/kenazred.custom_xml", "custom_xml", "environments/casino/env_casino_01", "environment")
				elseif rnd6 == 5 then
			end
		end
		if level_id == "hox_1" then
			if rnd2 == 0 then
				if envsmod._settings.color_gradings then
					local hox_1_colors = { 'color_nice', 'color_xxxgen', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
					local hox_1_colors_randomized = hox_1_colors[ math.random( 1, #hox_1_colors ) ]
					tweak_data.levels.hox_1.env_params = { color_grading = hox_1_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/hox1.custom_xml", "custom_xml", "environments/pd2_env_hox1_01/pd2_env_hox1_01", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/hox_1_parkinglot.custom_xml", "custom_xml", "environments/pd2_env_hox1_02/pd2_env_hox1_02", "environment")
			elseif rnd2 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/hox_1_parkinglot.custom_xml", "custom_xml", "environments/pd2_env_hox1_02/pd2_env_hox1_02", "environment")
			end
		end
		if level_id == "brb" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/brb.custom_xml", "custom_xml", "environments/pd2_dah_outdoor/pd2_dah_outdoor", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/brb.custom_xml", "custom_xml", "units/pd2_dlc_brb/environments/pd2_env_brb_interior_bank", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/brb.custom_xml", "custom_xml", "units/pd2_dlc_brb/environments/pd2_env_brb_exterior_v4", "environment")
		end
		if level_id == "welcome_to_the_jungle_1" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/jungle1.custom_xml", "custom_xml", "environments/pd2_env_morning_02/pd2_env_morning_02", "environment")
		end
		if level_id == "welcome_to_the_jungle_1_prof" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/jungle1.custom_xml", "custom_xml", "environments/pd2_env_morning_02/pd2_env_morning_02", "environment")
		end
		if level_id == "welcome_to_the_jungle_1_night" then
			tweak_data.levels.welcome_to_the_jungle_1_night.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/jungle_1_night.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
		end
		if level_id == "welcome_to_the_jungle_1_night_prof" then
			tweak_data.levels.welcome_to_the_jungle_1_night_prof.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/jungle_1_night.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
		end
		if level_id == "welcome_to_the_jungle_2" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/jungle_2.custom_xml", "custom_xml", "environments/pd2_env_villa_vivaldi/pd2_env_villa_vivaldi", "environment")
		end
		if level_id == "welcome_to_the_jungle_2_prof" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/jungle_2.custom_xml", "custom_xml", "environments/pd2_env_villa_vivaldi/pd2_env_villa_vivaldi", "environment")
		end
		if level_id == "nightclub" then
			if envsmod._settings.color_gradings then
				local nightclub_colors = { 'color_nice', 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
				local nightclub_colors_randomized = nightclub_colors[ math.random( 1, #nightclub_colors ) ]
				tweak_data.levels.nightclub.env_params = { color_grading = nightclub_colors_randomized }
			else return end
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/nightclub.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
		end
		if level_id == "escape_garage" then
			if rnd3 == 0 then
			tweak_data.levels.escape_garage.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/escape_garage_dawn.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			elseif rnd3 == 1 then
			tweak_data.levels.escape_garage.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/pd2_env_night_37_1.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			elseif rnd3 == 2 then
			tweak_data.levels.escape_garage.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/escape_garage_2.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			end
		end
		if level_id == "escape_park" then
			tweak_data.levels.escape_park.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/park_escape_night.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
		end
		if level_id == "escape_street" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/escape_street.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
		end
		if level_id == "escape_park_day" then
			if rnd4 == 0 then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/park_escape_day.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			elseif rnd4 == 1 then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/family_3.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			elseif rnd4 == 2 then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/family_2.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			elseif rnd4 == 3 then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/jew_1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "escape_overpass" then
			if rnd3 == 0 then
				if envsmod._settings.color_gradings then
					local escape_overpass_colors = { 'color_bhd', 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_colorful', 'color_bhd_classic', 'color_payday' }
					local escape_overpass_colors_randomized = escape_overpass_colors[ math.random( 1, #escape_overpass_colors ) ]
					tweak_data.levels.escape_overpass.env_params = { color_grading = escape_overpass_colors_randomized }
				else return end
			tweak_data.levels.escape_overpass_night.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/escape_overpass.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			elseif rnd3 == 1 then
				if envsmod._settings.color_gradings then
					local escape_overpass_colors = { 'color_heat', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_heat_classic', 'color_payday_classic', 'color_payday' }
					local escape_overpass_colors_randomized = escape_overpass_colors[ math.random( 1, #escape_overpass_colors ) ]
					tweak_data.levels.escape_overpass.env_params = { color_grading = escape_overpass_colors_randomized }
				else return end
			tweak_data.levels.escape_overpass.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/escape_overpass_fog.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			elseif rnd3 == 2 then
			tweak_data.levels.escape_overpass.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/pd2_env_night_37_1.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			end
		end
		if level_id == "escape_overpass_night" then
			if rnd3 == 0 then
				if envsmod._settings.color_gradings then
					local escape_overpass_colors = { 'color_bhd', 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_colorful', 'color_bhd_classic', 'color_payday' }
					local escape_overpass_colors_randomized = escape_overpass_colors[ math.random( 1, #escape_overpass_colors ) ]
					tweak_data.levels.escape_overpass_night.env_params = { color_grading = escape_overpass_colors_randomized }
				else return end
			tweak_data.levels.escape_overpass_night.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/overpass_escape.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			elseif rnd3 == 1 then
				if envsmod._settings.color_gradings then
					local escape_overpass_colors = { 'color_heat', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_heat_classic', 'color_payday_classic', 'color_payday' }
					local escape_overpass_colors_randomized = escape_overpass_colors[ math.random( 1, #escape_overpass_colors ) ]
					tweak_data.levels.escape_overpass_night.env_params = { color_grading = escape_overpass_colors_randomized }
				else return end
			tweak_data.levels.escape_overpass_night.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/overpass_escape_fog.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			elseif rnd3 == 2 then
			tweak_data.levels.escape_overpass_night.flashlights_on = true
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/pd2_env_night_37_1.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			end
		end
		if level_id == "bex" then
			if envsmod._settings.color_gradings then
				local bex_colors = { 'color_xgen', 'color_bhd_classic', 'color_payday_classic', 'color_colorful', 'color_payday' }
				local bex_colors_randomized = bex_colors[ math.random( 1, #bex_colors ) ]
				tweak_data.levels.bex.env_params = { color_grading = bex_colors_randomized }
			else return end
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/bexico.custom_xml", "custom_xml", "environments/pd2_env_bex/int/pd2_env_bex_int", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/bexico.custom_xml", "custom_xml", "environments/pd2_env_bex/ext/pd2_env_bex_ext", "environment")
		end
		if level_id == "escape_cafe_day" then
			if rnd5 == 0 then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/cafe_escape_day_newcloudy.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			elseif rnd5 == 1 then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/escape_cafe_cloudy.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			elseif rnd5 == 2 then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/escape_cafe_2.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			elseif rnd5 == 3 then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/escape_cafe_3.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			elseif rnd5 == 4 then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/escape_cafe_blue.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "arm_for" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/arm_for.custom_xml", "custom_xml", "environments/pd2_env_mountain/pd2_env_mountain", "environment")
		end
		if level_id == "tag" then
			if rnd2 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/breakingfeds.custom_xml", "custom_xml", "units/pd2_dlc_tag/environtments/pd2_env_tag_interior01", "environment")
				elseif rnd2 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/breakingfeds2.custom_xml", "custom_xml", "units/pd2_dlc_tag/environtments/pd2_env_tag_interior01", "environment")
			end
		end
		if level_id == "mus" then
				if envsmod._settings.color_gradings then
					local mus_colors = { 'color_nice', 'color_xgen', 'color_xxxgen', 'color_bhd', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
					local mus_colors_randomized = mus_colors[ math.random( 1, #mus_colors ) ]
					tweak_data.levels.mus.env_params = { color_grading = mus_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/museum_main_lobby.custom_xml", "custom_xml", "environments/pd2_indiana/pd2_indiana", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/museum_main_lobby.custom_xml", "custom_xml", "environments/pd2_indiana_corridor/pd2_indiana_corridor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/museum_main_lobby.custom_xml", "custom_xml", "environments/pd2_indiana_big_room/pd2_indiana_big_room", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/museum_basement.custom_xml", "custom_xml", "environments/pd2_indiana_basement/pd2_indiana_basement", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/museum_main_lobby.custom_xml", "custom_xml", "environments/pd2_indiana_lobby/pd2_indiana_lobby", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/museum_main_lobby.custom_xml", "custom_xml", "environments/pd2_indiana_small_lobby/pd2_indiana_small_lobby", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/museum_main_lobby.custom_xml", "custom_xml", "environments/pd2_indiana_corridor_skylight/pd2_indiana_corridor_skylight", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/museum_main_lobby.custom_xml", "custom_xml", "environments/pd2_indiana_green_room/pd2_indiana_green_room", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/museum_red_room.custom_xml", "custom_xml", "environments/pd2_indiana_red_room/pd2_indiana_red_room", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/museum_main_lobby.custom_xml", "custom_xml", "environments/pd2_indiana_blue_room/pd2_indiana_blue_room", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/museum_main_lobby.custom_xml", "custom_xml", "environments/pd2_indiana_yellow_room/pd2_indiana_yellow_room", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/museum_main_lobby.custom_xml", "custom_xml", "environments/pd2_indiana_diamond_room/pd2_indiana_diamond_room", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/museum_main_lobby.custom_xml", "custom_xml", "environments/pd2_indiana_renovated_room/pd2_indiana_renovated_room", "environment")
		end
		if level_id == "man" then
			if envsmod._settings.color_gradings then
				local man_colors = { 'color_nice', 'color_xgen', 'color_xxxgen', 'color_payday' }
				local man_colors_randomized = man_colors[ math.random( 1, #man_colors ) ]
				tweak_data.levels.man.env_params = { color_grading = man_colors_randomized }
			else return end
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/undercover_corridor.custom_xml", "custom_xml", "environments/pd2_man/pd2_man_corridor_nofog", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/undercover_corridor.custom_xml", "custom_xml", "environments/pd2_man/pd2_man_corridor", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/undercover_rooms.custom_xml", "custom_xml", "environments/pd2_man/pd2_man_rooms", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/undercover_main.custom_xml", "custom_xml", "environments/pd2_man/pd2_man_main", "environment")
		end
		if level_id == "flat" then
			if envsmod._settings.color_gradings then
				local flat_colors = { 'color_nice', 'color_matrix_classic' }
				local flat_colors_randomized = flat_colors[ math.random( 1, #flat_colors ) ]
				tweak_data.levels.flat.env_params = { color_grading = flat_colors_randomized }
			else return end
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/flat_1.custom_xml", "custom_xml", "environments/pd2_flat/pd2_flat", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/flat_1.custom_xml", "custom_xml", "environments/pd2_flat_indoor/pd2_flat_indoor", "environment")
		end
		if level_id == "family" then
			if rnd3 == 0 then
				if envsmod._settings.color_gradings then
					local family_colors = { 'color_nice', 'color_payday_classic', 'color_payday' }
					local family_colors_randomized = family_colors[ math.random( 1, #family_colors ) ]
					tweak_data.levels.family.env_params = { color_grading = family_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/family_1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd3 == 1 then
				if envsmod._settings.color_gradings then
					local family_colors = { 'color_payday_classic', 'color_payday' }
					local family_colors_randomized = family_colors[ math.random( 1, #family_colors ) ]
					tweak_data.levels.family.env_params = { color_grading = family_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/family_2.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd3 == 2 then
				if envsmod._settings.color_gradings then
					local family_colors = { 'color_nice', 'color_xgen', 'color_xxxgen', 'color_matrix_classic', 'color_bhd_classic', 'color_payday_classic', 'color_payday' }
					local family_colors_randomized = family_colors[ math.random( 1, #family_colors ) ]
					tweak_data.levels.family.env_params = { color_grading = family_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/family_3.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "run" then
			if rnd2 == 0 then
				if envsmod._settings.color_gradings then
					local run_colors = { 'color_nice', 'color_payday_classic', 'color_payday' }
					local run_colors_randomized = run_colors[ math.random( 1, #run_colors ) ]
					tweak_data.levels.run.env_params = { color_grading = run_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/run_1.custom_xml", "custom_xml", "environments/pd2_run/run_inside", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/run_1.custom_xml", "custom_xml", "environments/pd2_run/run_outside", "environment")
				elseif rnd2 == 1 then
				if envsmod._settings.color_gradings then
					local run_colors = { 'color_nice', 'color_payday_classic', 'color_payday' }
					local run_colors_randomized = run_colors[ math.random( 1, #run_colors ) ]
					tweak_data.levels.run.env_params = { color_grading = run_colors_randomized }
				else return end
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/run_2.custom_xml", "custom_xml", "environments/pd2_run/run_inside", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/run_2.custom_xml", "custom_xml", "environments/pd2_run/run_outside", "environment")
			end
		end
	end)



Hooks:Add("BeardLibPreProcessScriptData", "RestorationCreateEnvironment", function(PackManager, path, raw_data)
    if managers.dyn_resource then
        local skies = {
            "sky_1930_twillight",
			"sky_1930_sunset_heavy_clouds",
            "sky_1846_low_sun_nice_clouds",
            "sky_0902_overcast",
			"sky_1530_low_sun_clouds",
			"sky_1945_sunset",
			"sky_1945_sunset_clouds",
			"sky_1224_clear_sky",
			"sky_1830_low_sun_clouds",
			"sky_0902_overcast_dark",
			"sky_1931_low_sun",
			"sky_1345_clear_sky",
			"sky_0200_night_moon_stars",
			"sky_2000_twilight_mad",
			"sky_2100_moon",
			"sky_1008_cloudy",
			"sky_0927_whispy_clouds",
			"sky_2335_night_moon",
			"sky_2100_moon",
			"sky_2003_sunrise",
			"sky_city_clear",
			"sky_dah_night",
			"sky_1313_cloudy_dark",
			"sky_2003_dusk_blue",
			"sky_2003_dusk_blue_high_color_scale",
			"sky_279_dusk"
			
        }
        for _, sky in ipairs(skies) do
            if not managers.dyn_resource:has_resource(Idstring("scene"), Idstring("core/environments/skies/" .. sky .. "/" .. sky), managers.dyn_resource.DYN_RESOURCES_PACKAGE) then
                managers.dyn_resource:load(Idstring("scene"), Idstring("core/environments/skies/" .. sky .. "/" .. sky), managers.dyn_resource.DYN_RESOURCES_PACKAGE, nil)
            end
        end
    end
end)