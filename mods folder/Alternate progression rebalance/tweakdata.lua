if not tweak_data then return end
	tweak_data.experience_manager.loot_drop_value = {
		xp10 = 7000, -- 2000
		xp15 = 11000, -- 3000
		xp20 = 18000, -- 4000
		xp30 = 24000, -- 7000
		xp40 = 30000, -- 10000
		xp50 = 36000, -- 12000
		xp60 = 42000, -- 15000
		xp70 = 50000, -- 20000
		xp80 = 58000, -- 24000
		xp90 = 64000, -- 28000
		xp100 = 72000, -- 32000
		xp_pda9_1 = 250000,
		xp_pda9_2 = 3000000
	}
	
	tweak_data.experience_manager.stage_failed_multiplier = 0.15 -- beta value
	tweak_data.experience_manager.in_custody_multiplier = 0.45
	
	tweak_data.experience_manager.stage_completion = {
		200,
		250,
		300,
		350,
		425,
		475,
		550
	}
	tweak_data.experience_manager.job_completion = {
		750,
		1000,
		1500,
		2000,
		2500,
		3000,
		4000
	}