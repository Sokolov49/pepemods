Hooks:PostHook(CoreEnvironmentControllerManager, "init", "post_env", function(self)
	self._base_contrast = -0.1
end)

function CoreEnvironmentControllerManager:set_ssao_radius(value)
	-- set_post_material_parameter(ids_ao_post_processor, "post_SSAO", Idstring("ssao_radius"), value)
	set_post_material_parameter(ids_ao_post_processor, "post_SSAO", 120, value) -- default is 40 (value)
end

function CoreEnvironmentControllerManager:set_ssao_range(k, i)
	-- set_post_material_parameter(ids_ao_post_processor, "post_SSAO", Idstring("ssao_steepness"), k)
	-- set_post_material_parameter(ids_ao_post_processor, "post_SSAO", Idstring("ssao_inflexion"), i)
	set_post_material_parameter(ids_ao_post_processor, "post_SSAO", 100, k) -- default is 10 (k)
	set_post_material_parameter(ids_ao_post_processor, "post_SSAO", 2.8, i) -- default is 0.28 (i)
end