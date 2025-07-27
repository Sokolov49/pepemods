--THIS MUST ALWAYS HOOK TO core/lib/managers/coresequencemanager
--local map = Global.level_data.level_id

local mod_path = tostring(improv._mod_path or "mods/Improved Environments")

--Time of Day Loader

--this thing picks a random number between 0 and 1, making 2 possible results
local rnd2 = math.floor(math.random() * 2)

--this thing picks a random number between 0 and 2, making 3 possible results
local rnd3 = math.floor(math.random() * 3)

--this thing picks a random number between 0 and 3, making 4 possible results
local rnd4 = math.floor(math.random() * 4)

--this thing picks a random number between 0 and 4, making 5 possible results
local rnd5 = math.floor(math.random() * 5)

--this thing picks a random number between 0 and 5, making 6 possible results
local rnd6 = math.floor(math.random() * 6)

--this thing picks a random number between 0 and 6, making 7 possible results
local rnd7 = math.floor(math.random() * 7)

--this thing picks a random number between 0 and 7, making 8 possible results
local rnd8 = math.floor(math.random() * 8)

--this thing picks a random number between 0 and 8, making 9 possible results
local rnd9 = math.floor(math.random() * 9)

--this thing picks a random number between 0 and 9, making 10 possible results
local rnd9 = math.floor(math.random() * 10)

--this thing picks a random number between 0 and 10, making 11 possible results
local rnd10 = math.floor(math.random() * 11)

	Hooks:Add("BeardLibCreateScriptDataMods", "TODCallBeardLibSequenceFuncs", function()
		if not Global.load_level then 
			return
		end
		local level_id = Global.game_settings.level_id

		if level_id == "branchbank" then 
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/world_scripts/branchbank_world_sounds.generic_xml", "generic_xml", "levels/narratives/h_firestarter/stage_3/world_sounds", "world_sounds")
				if rnd5 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_bluey.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_cold.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_milk.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_orange.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 4 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "firestarter_1" then
			if rnd4 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/firestarter1_1.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
				elseif rnd4 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/firestarter1_2.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
				elseif rnd4 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/firestarter1_3.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
				elseif rnd4 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/firestarter1_4.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			end
		end
		if level_id == "firestarter_2" then 	
			if rnd2 == 0 then		
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/firestarter2_1.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
				elseif rnd2 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/firestarter2_2.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			end
		end
		if level_id == "firestarter_3" then 
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/world_scripts/branchbank_world_sounds.generic_xml", "generic_xml", "levels/narratives/h_firestarter/stage_3/world_sounds", "world_sounds")
				if rnd5 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_bluey.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_cold.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_milk.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_orange.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 4 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "mad" then 
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/boiling_point_indoors.custom_xml", "custom_xml", "environments/pd2_mad_lab/pd2_mad_lab", "environment")
				if rnd2 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/madoutside.custom_xml", "custom_xml", "environments/pd2_mad_outdoor/pd2_mad_outdoor", "environment")
				elseif rnd2 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/madoutside2.custom_xml", "custom_xml", "environments/pd2_mad_outdoor/pd2_mad_outdoor", "environment")
			end
		end
		if level_id == "jewelry_store" then
			if rnd2 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/jewelrystore_betalike.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd2 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/jew_1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd2 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/jew_2.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "hox_3" then 
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/hox_3_new_v2_indoor.custom_xml", "custom_xml", "environments/pd2_mcmansion_night/pd2_mcmansion_night", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/hox_3_new_v2_indoor.custom_xml", "custom_xml", "environments/pd2_mcmansion_indoor_basement/pd2_mcmansion_indoor_basement", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/hox_3_new_v2_indoor.custom_xml", "custom_xml", "environments/pd2_mcmansion_indoor_dark/pd2_mcmansion_indoor_dark", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/world_scripts/hox3_world_sounds.generic_xml", "generic_xml", "levels/narratives/bain/revenge/world_sounds", "world_sounds")
		end
		if level_id == "shoutout_raid" then 
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/shoutout_raid.custom_xml", "custom_xml", "environments/pd2_shoutoutraid_indoor/pd2_shoutoutraid_indoor", "environment")
		end
		if level_id == "red2" then
			if rnd4 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/red2-1.custom_xml", "custom_xml", "environments/pd2_red/pd2_red", "environment")
				elseif rnd4 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/red2-2.custom_xml", "custom_xml", "environments/pd2_red/pd2_red", "environment")
				elseif rnd4 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/red2-3.custom_xml", "custom_xml", "environments/pd2_red/pd2_red", "environment")
				elseif rnd4 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/red2-4.custom_xml", "custom_xml", "environments/pd2_red/pd2_red", "environment")
			end
		end
		if level_id == "watchdogs_1" then
			if rnd3 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/wd1_day1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd3 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/wd1_day3.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd3 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/wd1_day4.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "watchdogs_1_night" then 
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/watchdogs_1_night2.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
		end
		if level_id == "watchdogs_2" then 
			if rnd3 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/wd2_1.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
				elseif rnd3 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/wd2_2.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
				elseif rnd3 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/wd2_3.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
			end
		end
		if level_id == "alex_1" then
			if rnd4 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_1.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
				elseif rnd4 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_2.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
				elseif rnd4 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_4.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
				elseif rnd4 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_5.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
			end
		end
		if level_id == "alex_2" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/alex_2_falloff.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
		end
		if level_id == "alex_3" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/alex_3_falloff.custom_xml", "custom_xml", "environments/pd2_env_rat_night_stage_3/pd2_env_rat_night_stage_3", "environment")
		end
		if level_id == "dah" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/dah_1.custom_xml", "custom_xml", "units/pd2_dlc_dah/environments/pd2_dah_outdoor/pd2_dah_outdoor", "environment")
		end
		if level_id == "four_stores" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/fourstores.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
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
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_1.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
				elseif rnd4 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_2.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
				elseif rnd4 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_4.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
				elseif rnd4 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/rats1_5.custom_xml", "custom_xml", "environments/pd2_env_rat_night/pd2_env_rat_night", "environment")
			end
		end
		if level_id == "nmh" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/nmh_brighter.custom_xml", "custom_xml", "units/pd2_dlc_nmh/environments/nmh_environment_01", "environment")
			--BeardLib:ReplaceScriptData(mod_path .. "scriptdata/world_scripts/nmh_world_sounds.generic_xml", "generic_xml", "levels/narratives/classics/nmh/world_sounds", "world_sounds")
		end
		if level_id == "haunted" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/haunted.custom_xml", "custom_xml", "environments/pd2_env_framing_frame_stage_2/pd2_env_framing_frame_stage_2", "environment")
		end
		if level_id == "help" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/help-haunted.custom_xml", "custom_xml", "environments/pd2_env_help/pd2_env_help_main", "environment")
		end
		if level_id == "nail" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/lab-haunted.custom_xml", "custom_xml", "environments/env_nail/env_nail", "environment")
		end
		if level_id == "pines" then
			if rnd3 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/pines1_2.custom_xml", "custom_xml", "environments/pd2_env_pines/pd2_env_pines", "environment")
				elseif rnd3 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/pines1_3.custom_xml", "custom_xml", "environments/pd2_env_pines/pd2_env_pines", "environment")
				elseif rnd3 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/pines1_4.custom_xml", "custom_xml", "environments/pd2_env_pines/pd2_env_pines", "environment")
			end
		end
		if level_id == "cane" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/candy-cane-cold.custom_xml", "custom_xml", "environments/pd2_env_cane/pd2_env_cane", "environment")
		end
		if level_id == "pal" then
			if rnd4 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_1.custom_xml", "custom_xml", "environments/suburbia_env/suburbia_env", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_1.custom_xml", "custom_xml", "environments/pd2_pal_indoor/pd2_pal_indoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_1.custom_xml", "custom_xml", "environments/pd2_pal_basement/pd2_pal_basement", "environment")
				elseif rnd4 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_2.custom_xml", "custom_xml", "environments/suburbia_env/suburbia_env", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_2.custom_xml", "custom_xml", "environments/pd2_pal_indoor/pd2_pal_indoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_2.custom_xml", "custom_xml", "environments/pd2_pal_basement/pd2_pal_basement", "environment")
				elseif rnd4 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_3.custom_xml", "custom_xml", "environments/suburbia_env/suburbia_env", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_3.custom_xml", "custom_xml", "environments/pd2_pal_indoor/pd2_pal_indoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_3.custom_xml", "custom_xml", "environments/pd2_pal_basement/pd2_pal_basement", "environment")
				elseif rnd4 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_5.custom_xml", "custom_xml", "environments/suburbia_env/suburbia_env", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_5.custom_xml", "custom_xml", "environments/pd2_pal_indoor/pd2_pal_indoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/counterfeit_5.custom_xml", "custom_xml", "environments/pd2_pal_basement/pd2_pal_basement", "environment")
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
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/brooklyn10-10.custom_xml", "custom_xml", "environments/pd2_env_spa/pd2_env_spa_basement", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/brooklyn10-10.custom_xml", "custom_xml", "environments/pd2_env_spa/pd2_env_spa_a", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/brooklyn10-10.custom_xml", "custom_xml", "environments/pd2_env_spa/pd2_env_spa_outside", "environment")
		end
		if level_id == "glace" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/greenbridge_1.custom_xml", "custom_xml", "environments/pd2_glace/glace_outside", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/greenbridge_1_ins.custom_xml", "custom_xml", "environments/pd2_glace/glace_inside", "environment")
		end
		if level_id == "hvh" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/killroom_trippy.custom_xml", "custom_xml", "environments/pd2_env_hvh/hvh_default", "environment")
		end
		if level_id == "election_day_1" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/election1.custom_xml", "custom_xml", "environments/pd2_env_ed1/pd2_env_ed1", "environment")
		end
		if level_id == "gallery" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/framing1.custom_xml", "custom_xml", "environments/pd2_env_framing_frame_stage_2/pd2_env_framing_frame_stage_2", "environment")
		end
		if level_id == "framing_frame_1" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/framing1.custom_xml", "custom_xml", "environments/pd2_env_framing_frame_stage_2/pd2_env_framing_frame_stage_2", "environment")
		end
		if level_id == "framing_frame_2" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/framing2.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
		end
		if level_id == "framing_frame_3" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/framing3.custom_xml", "custom_xml", "environments/pd2_env_framing_frame_stage_3/pd2_env_framing_frame_stage_3", "environment")
		end
		if level_id == "peta2" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/goatsim2_2_evening.custom_xml", "custom_xml", "environments/pd2_peta2_new_try/pd2_peta2_new_try", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/goatsim2_2_evening.custom_xml", "custom_xml", "environments/pd2_peta2_new_try_outside/pd2_peta2_new_try_outside", "environment")
		end
		if level_id == "dinner" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/slaughterhouse.custom_xml", "custom_xml", "environments/pd2_dinner_outdoor/pd2_dinner_outdoor", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/slaughterhouse.custom_xml", "custom_xml", "environments/pd2_dinner_outdoor_ending/pd2_dinner_outdoor_ending", "environment")
		end
		if level_id == "roberts" then
			if rnd3 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/roberts_1.custom_xml", "custom_xml", "environments/env_csgo_de_bank/env_csgo_de_bank", "environment")
				elseif rnd3 == 1 then
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
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_bluey.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_cold.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_milk.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_orange.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 4 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "escape_street" then 
			if rnd5 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_bluey.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_cold.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_milk.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank_orange.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd5 == 4 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/branchbank1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "arm_hcm" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/arm_hcm.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
		end
		if level_id == "arm_par" then
			if rnd2 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_par_1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd2 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_par_1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "arm_cro" then 
			if rnd2 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_cro_1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd2 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_cro_1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "arm_und" then
			if rnd8 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und_bf3.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
				elseif rnd8 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und_bf4.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
				elseif rnd8 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und_clouds.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
				elseif rnd8 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und_dark.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
				elseif rnd8 == 4 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und_morning.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
				elseif rnd8 == 5 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und1.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
				elseif rnd8 == 6 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und2.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
				elseif rnd8 == 7 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/arm_und_sunset2.custom_xml", "custom_xml", "environments/pd2_env_foggy_bright/pd2_env_foggy_bright", "environment")
			end
		end
		if level_id == "arm_fac" then 
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/arm_fac2.custom_xml", "custom_xml", "environments/pd2_env_n2/pd2_env_n2", "environment")
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
			if rnd6 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/sunsetmia.custom_xml", "custom_xml", "environments/pd2_hlm1/pd2_hlm1", "environment")
				elseif rnd6 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/miamidusk.custom_xml", "custom_xml", "environments/pd2_hlm1/pd2_hlm1", "environment")
				elseif rnd6 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/miamievening.custom_xml", "custom_xml", "environments/pd2_hlm1/pd2_hlm1", "environment")
				elseif rnd6 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/sunsetv4mia.custom_xml", "custom_xml", "environments/pd2_hlm1/pd2_hlm1", "environment")
				elseif rnd6 == 4 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/nightcall.custom_xml", "custom_xml", "environments/pd2_hlm1/pd2_hlm1", "environment")
				elseif rnd6 == 5 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/retrohwahve.custom_xml", "custom_xml", "environments/pd2_hlm1/pd2_hlm1", "environment")
			end
		end
		if level_id == "mia_2" then 
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/retrohwahvemia2.custom_xml", "custom_xml", "environments/pd2_res/pd2_res", "environment")
		end
		if level_id == "kenaz" then
			if rnd5 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/kenazblue.custom_xml", "custom_xml", "environments/casino/env_casino_01", "environment")
				elseif rnd5 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/kenazdark.custom_xml", "custom_xml", "environments/casino/env_casino_01", "environment")
				elseif rnd5 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/kenazfoggy.custom_xml", "custom_xml", "environments/casino/env_casino_01", "environment")
				elseif rnd5 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/kenazorange.custom_xml", "custom_xml", "environments/casino/env_casino_01", "environment")
				elseif rnd5 == 4 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/kenazred.custom_xml", "custom_xml", "environments/casino/env_casino_01", "environment")
			end
		end
		if level_id == "hox_1" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/hox1.custom_xml", "custom_xml", "environments/pd2_env_hox1_01/pd2_env_hox1_01", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/hox_1_parkinglot.custom_xml", "custom_xml", "environments/pd2_env_hox1_02/pd2_env_hox1_02", "environment")
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
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/jungle_1_night.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
		end
		if level_id == "welcome_to_the_jungle_1_night_prof" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/jungle_1_night.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
		end
		if level_id == "welcome_to_the_jungle_2" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/jungle_2.custom_xml", "custom_xml", "environments/pd2_env_villa_vivaldi/pd2_env_villa_vivaldi", "environment")
		end
		if level_id == "welcome_to_the_jungle_2_prof" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/jungle_2.custom_xml", "custom_xml", "environments/pd2_env_villa_vivaldi/pd2_env_villa_vivaldi", "environment")
		end
		if level_id == "nightclub" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/nightclub.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
		end
		if level_id == "escape_garage" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/escape_garage_dawn.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
		end
		if level_id == "escape_park" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/park_escape_night.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
		end
		if level_id == "escape_street" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/escape_street.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
		end
		if level_id == "escape_park_day" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/park_escape_day.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
		end
		if level_id == "escape_overpass" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/overpass_escape.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
		end
		if level_id == "escape_overpass_night" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/overpass_escape.custom_xml", "custom_xml", "environments/pd2_env_night/pd2_env_night", "environment")
		end
		if level_id == "escape_cafe_day" then
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/legacy/cafe_escape_day_newcloudy.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
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
		if level_id == "man" then 
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/env_und.custom_xml", "custom_xml", "environments/secret_stash_v4/secret_stash_v4", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/env_und.custom_xml", "custom_xml", "environments/secret_stash_v4_rooms/secret_stash_v4_rooms", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/env_und.custom_xml", "custom_xml", "environments/secret_stash_v4_corridor/secret_stash_v4_corridor", "environment")
		end
		if level_id == "flat" then 
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/env_flat_ext.custom_xml", "custom_xml", "environments/pd2_flat/pd2_flat", "environment")
			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/env_flat_int.custom_xml", "custom_xml", "environments/pd2_flat_indoor/pd2_flat_indoor", "environment")
		end
		if level_id == "family" then
			if rnd3 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/family_1.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd3 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/family_2.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
				elseif rnd3 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/family_3.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
			end
		end
		if level_id == "des" then
			if rnd5 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_clouds.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_indoor/des_indoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_clouds.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_indoor_02/des_indoor_02", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_clouds.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_indoor/des_indoor", "environment")
				elseif rnd5 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_default.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_outdoor/des_outdoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_default.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_indoor_02/des_indoor_02", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_default.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_indoor/des_indoor", "environment")
				elseif rnd5 == 2 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_default2.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_outdoor/des_outdoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_default2.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_indoor_02/des_indoor_02", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_default2.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_indoor/des_indoor", "environment")
				elseif rnd5 == 3 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_morning.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_outdoor/des_outdoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_morning.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_indoor_02/des_indoor_02", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_morning.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_indoor/des_indoor", "environment")
				elseif rnd5 == 4 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_night.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_outdoor/des_outdoor", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_night.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_indoor_02/des_indoor_02", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/henry_night.custom_xml", "custom_xml", "units/pd2_dlc_des/environments/des_indoor/des_indoor", "environment")
			end
		end
		if level_id == "run" then
			if rnd2 == 0 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/run_1.custom_xml", "custom_xml", "environments/pd2_run/run_inside", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/run_1.custom_xml", "custom_xml", "environments/pd2_run/run_outside", "environment")
				elseif rnd2 == 1 then
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/run_2.custom_xml", "custom_xml", "environments/pd2_run/run_inside", "environment")
				BeardLib:ReplaceScriptData(mod_path .. "scriptdata/run_2.custom_xml", "custom_xml", "environments/pd2_run/run_outside", "environment")
			end
		end
	end)

	-- Hooks:Add("BeardLibCreateScriptDataMods", "NonLevelCallBeardLibSequenceFuncs", function()
	-- 	BeardLib:ReplaceScriptData(mod_path .. "scriptdata/bettercoredefault.custom_xml", "custom_xml", "environments/pd2_env_mid_day/pd2_env_mid_day", "environment")
	-- end)
--		if level_id == "dark" then
--			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/pd2_berry.custom_xml", "custom_xml", "environments/pd2_berry_underground/pd2_berry_underground", "environment")
--			BeardLib:ReplaceScriptData(mod_path .. "scriptdata/dark_murkystation.custom_xml", "custom_xml", "environments/pd2_env_fork_01/pd2_env_fork_01", "environment")
--		end
--		murky station ^

--Environment skies loader

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