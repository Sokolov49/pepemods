Hooks:PostHook(PlayerInventory, "set_mask_visibility", "sunglasses_in_casing_mode", function(self)
	local sunglasses_unit = tweak_data.blackmarket.masks.aviator.unit
	local sunglasses = sunglasses_unit and Idstring(sunglasses_unit)
	local mask_state = self._mask_visibility

	if mask_state == true then return else
		if self._unit == managers.player:player_unit() or not alive(self._unit) then
			return
		end
		
		if not managers.dyn_resource:has_resource(IDS_UNIT, Idstring("units/pd2_dlc_infamy/masks/msk_aviator/msk_aviator"), managers.dyn_resource.DYN_RESOURCES_PACKAGE, nil) then
			managers.dyn_resource:load(IDS_UNIT, Idstring("units/pd2_dlc_infamy/masks/msk_aviator/msk_aviator"), managers.dyn_resource.DYN_RESOURCES_PACKAGE, nil)
		end

		local head = Idstring("Head") --self._unit:get_object(Idstring("Head"))
		if alive(self._unit) then 
			if head and self._unit:get_object(head) and not self._headwear_unit then
				self._headwear_unit = World:spawn_unit(Idstring("units/pd2_dlc_infamy/masks/msk_aviator/msk_aviator"), Vector3(), Rotation())
				self._unit:link(head,self._headwear_unit,self._headwear_unit:orientation_object():name())
			end
		end
		MaskExt:init(self._headwear_unit)
	end
end)