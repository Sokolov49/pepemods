if not tweak_data then return end
	tweak_data.contour.interactable = {
		standard_color = Vector3(0, 0, 0), -- Vector3(1, 0.5, 0),
		selected_color = Vector3(0, 0, 0) -- Vector3(1, 1, 1)
	}
	tweak_data.contour.interactable_icon = {
		standard_color = Vector3(0, 0, 0),
		selected_color = Vector3(0, 0, 0), -- Vector3(0, 1, 0),
		standard_opacity = 0
	}
	tweak_data.contour.interactable_look_at = {
		standard_color = Vector3(0, 0, 0),
		selected_color = Vector3(0, 0, 0) -- Vector3(1, 1, 1)
	}