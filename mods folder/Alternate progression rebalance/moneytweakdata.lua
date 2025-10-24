Hooks:PostHook(MoneyTweakData, "init", "eclipse_init", function(self)
	-- self.biggest_score = 5040000
	-- self.biggest_cashout = 250000

	self.bag_values = {
		default = 150,
		money = 750,
		gold = 1250,
		diamonds = 1750,
		coke = 2000,
		coke_pure = 3000,
		meth = 6000,
		meth_half = 3000,
		weapon = 3000,
		weapons = 3000,
		painting = 1500,
		samurai_suit = 5000,
		artifact_statue = 5000,
		mus_artifact_bag = 1000,
		circuit = 1000,
		shells = 2100,
		turret = 10000,
		sandwich = 10000,
		cro_loot = 10000,
		hope_diamond = 30000,
		evidence_bag = 3000,
		vehicle_falcogini = 7500,
		warhead = 12500,
		unknown = 5000,
		safe = 4600,
		prototype = 10000,
		faberge_egg = 3000,
		treasure = 3200,
		counterfeit_money = 2000,
		box_unknown = 10000,
		black_tablet = 10000,
		masterpiece_painting = 10000,
		master_server = 10000,
		lost_artifact = 10000,
		present = 2049,
		mad_master_server_value_1 = 5000,
		mad_master_server_value_2 = 10000,
		mad_master_server_value_3 = 15000,
		mad_master_server_value_4 = 20000,
		weapon_glock = 1800,
		weapon_scar = 4000,
		drk_bomb_part = 9000,
		drone_control_helmet = 18000,
		toothbrush = 18000,
		cloaker_gold = 2000,
		cloaker_money = 1750,
		cloaker_cocaine = 1500,
		diamond_necklace = 2875,
		vr_headset = 2875,
		women_shoes = 2875,
		expensive_vine = 2875,
		ordinary_wine = 2875,
		robot_toy = 2875,
		rubies = 8000,
		red_diamond = 10000,
		old_wine = 2000
	}

	local loot_drop_value = 10000
	self.loot_drop_cash = {
		cash10 = loot_drop_value * 8, -- 80000
		cash20 = loot_drop_value * 12, -- 120000
		cash30 = loot_drop_value * 12, -- 120000
		cash40 = loot_drop_value * 16, -- 160000
		cash50 = loot_drop_value * 16, -- 160000
		cash60 = loot_drop_value * 20, -- 200000
		cash70 = loot_drop_value * 25, -- 250000
		cash80 = loot_drop_value * 25, -- 250000
		cash90 = loot_drop_value * 25, -- 250000
		cash100 = loot_drop_value * 50, -- 500000
		cash_preorder = self.biggest_cashout / 10
	}

	-- players alive bonus
	self.alive_players_max = 1.3

	-- increase weapon mod costs, just because
	self.modify_weapon_cost = self._create_value_table( 4340, 325000, 10, true, 1.2 )
	self.remove_weapon_mod_cost_multiplier = self._create_value_table( 1, 1, 10, true, 1 )
	
	-- increase asset prices
	self.mission_asset_cost_multiplier_by_risk = { 1.5, 3, 6, 9, 12, 15, 18 }
	
	-- weapon & mask slot costs
	self.unlock_new_weapon_slot_value = 125000
	self.unlock_new_mask_slot_value = 80000
end)