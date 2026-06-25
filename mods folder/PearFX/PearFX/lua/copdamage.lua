
		local ids_func = Idstring
		local table_contains = table.contains

		local big_idstring_table = {
			ids_func("units/payday2/characters/ene_swat_heavy_1/ene_swat_heavy_1"),
			ids_func("units/payday2/characters/ene_swat_heavy_1/ene_swat_heavy_1_husk"),
			ids_func("units/payday2/characters/ene_swat_heavy_r870/ene_swat_heavy_r870"),
			ids_func("units/payday2/characters/ene_swat_heavy_r870/ene_swat_heavy_r870_husk"),
			ids_func("units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870"),
			ids_func("units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870_husk"),
			ids_func("units/payday2/characters/ene_city_heavy_g36/ene_city_heavy_g36"),
			ids_func("units/payday2/characters/ene_city_heavy_g36/ene_city_heavy_g36_husk"),
			ids_func("units/payday2/characters/ene_city_heavy_r870/ene_city_heavy_r870"),
			ids_func("units/payday2/characters/ene_city_heavy_r870/ene_city_heavy_r870_husk"),
			ids_func("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
			ids_func("units/payday2/characters/ene_tazer_1/ene_tazer_1_husk")
		}	

		local enemies_plink = {
			ids_func("units/payday2/characters/ene_tazer_r870/ene_tazer_r870"),
			ids_func("units/payday2/characters/ene_tazer_r870/ene_tazer_r870_husk"),
			ids_func("units/payday2/characters/ene_swat_1/ene_swat_1"),
			ids_func("units/payday2/characters/ene_swat_1/ene_swat_1_husk"),
			ids_func("units/payday2/characters/ene_swat_2/ene_swat_2"),
			ids_func("units/payday2/characters/ene_swat_2/ene_swat_2_husk"),
			ids_func("units/payday2/characters/ene_swat_3/ene_swat_3"),
			ids_func("units/payday2/characters/ene_swat_3/ene_swat_3_husk"),
			ids_func("units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1"),
			ids_func("units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1_husk"),
			ids_func("units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2"),
			ids_func("units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2_husk"),
			ids_func("units/payday2/characters/ene_fbi_swat_3/ene_fbi_swat_3"),
			ids_func("units/payday2/characters/ene_fbi_swat_3/ene_fbi_swat_3_husk"),
			ids_func("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1"),
			ids_func("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1_husk"),
			ids_func("units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870"),
			ids_func("units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870_husk"),
			ids_func("units/payday2/characters/ene_shield_1/ene_shield_1"),
			ids_func("units/payday2/characters/ene_shield_1/ene_shield_1_husk"), 
			ids_func("units/payday2/characters/ene_medic_m4/ene_medic_m4"),
			ids_func("units/payday2/characters/ene_medic_m4/ene_medic_m4_husk"),
			ids_func("units/payday2/characters/ene_medic_r870/ene_medic_r870"),
			ids_func("units/payday2/characters/ene_medic_r870/ene_medic_r870_husk"),
			ids_func("units/payday2/characters/ene_city_swat_1/ene_city_swat_1"),
			ids_func("units/payday2/characters/ene_city_swat_1/ene_city_swat_1_husk"),
			ids_func("units/payday2/characters/ene_city_swat_2/ene_city_swat_2"),
			ids_func("units/payday2/characters/ene_city_swat_2/ene_city_swat_2_husk"),
			ids_func("units/payday2/characters/ene_city_swat_3/ene_city_swat_3"),
			ids_func("units/payday2/characters/ene_city_swat_3/ene_city_swat_3_husk"),
			ids_func("units/payday2/characters/ene_city_heavy_r870/ene_city_heavy_r870"),
			ids_func("units/payday2/characters/ene_city_heavy_r870/ene_city_heavy_r870_husk"),
			ids_func("units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat"),
			ids_func("units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat_husk"),
			ids_func("units/pd2_dlc1/characters/ene_gensec_operator_1/ene_gensec_operator_1"),
			ids_func("units/pd2_dlc1/characters/ene_gensec_operator_1/ene_gensec_operator_1_husk"),
			ids_func("units/pd2_dlc1/characters/ene_gensec_operator_2/ene_gensec_operator_2"),
			ids_func("units/pd2_dlc1/characters/ene_gensec_operator_2/ene_gensec_operator_2_husk"),
			ids_func("units/pd2_dlc_army/characters/ene_soldier_1/ene_soldier_1"),
			ids_func("units/pd2_dlc_army/characters/ene_soldier_1/ene_soldier_1_husk"),
			ids_func("units/pd2_dlc_army/characters/ene_soldier_1/ene_soldier_2"),
			ids_func("units/pd2_dlc_army/characters/ene_soldier_1/ene_soldier_2_husk"),
			ids_func("units/pd2_dlc_army/characters/ene_soldier_1/ene_soldier_3"),
			ids_func("units/pd2_dlc_army/characters/ene_soldier_1/ene_soldier_3_husk"),
			ids_func("units/pd2_dlc_army/characters/ene_soldier_1/ene_soldier_4"),
			ids_func("units/pd2_dlc_army/characters/ene_soldier_1/ene_soldier_4_husk")
		}

		Hooks:PreHook( CopDamage, "_spawn_head_gadget", "smash_generics", function(self, params)
			if not self._head_gear then
				return
			end

			local unit_name = self._unit:name()
			local my_unit = self._unit

			local smashablefuckers = table_contains(big_idstring_table, my_unit:name())
			local metalplink = table_contains(enemies_plink, my_unit:name())

			local head_obj = ids_func("Head")
			local head_object_get = my_unit:get_object(head_obj)
			
			if not head_object_get then
				return
			end
			
			local world_g = World		
			local sound_ext = my_unit:sound()	
	
			if smashablefuckers then
				world_g:effect_manager():spawn({
					effect = ids_func("effects/helmet_glass_break"),
					parent = head_object_get		
				})			
				world_g:effect_manager():spawn({
					effect = ids_func("effects/payday2/particles/impacts/glass_impact_pd2"),
					parent = head_object_get		
				})
				world_g:effect_manager():spawn({
					effect = ids_func("effects/helmet_spark"),
					parent = head_object_get		
				})
				world_g:effect_manager():spawn({
					effect = ids_func("effects/regular_headshot"),
					parent = head_object_get		
				})	
				sound_ext:play("swat_heavy_visor_shatter", nil, nil)
				sound_ext:play("bulldozer_visor_shatter", nil, nil)
				
			elseif metalplink then
				world_g:effect_manager():spawn({
					effect = ids_func("effects/particles/bullet_hit/sheet_metal/bullet_hit_sheet_metal"),
					parent = head_object_get		
				})
				world_g:effect_manager():spawn({
					effect = ids_func("effects/helmet_spark"),
					parent = head_object_get		
				})
				world_g:effect_manager():spawn({
					effect = ids_func("effects/regular_headshot"),
					parent = head_object_get		
				})	
			end
		end)