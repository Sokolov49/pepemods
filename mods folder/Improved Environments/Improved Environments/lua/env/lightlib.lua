LightOmni = LightOmni or class()

function LightOmni:init(data)
	self._light = World:create_light("omni|specular")
	
	self._enable = true
	if data.enable == false then
		self._enable = false
	end
	
	self._position = data.position or Vector3()
	self._color = data.color
	self._near_range = data.near_range or 80
	self._far_range = data.far_range or 200
	self._upper_clipping = data.upper_clipping or 10000
	self._lower_clipping = data.lower_clipping or -10000
	self._intensity = data.intensity or "identity"
	self._falloff = data.falloff or 1
	
	self._light:set_enable(self._enable)
	self._light:set_position(self._position)
	self._light:set_color(self._color)
	self._light:set_near_range(self._near_range)
	self._light:set_far_range(self._far_range)
	self._light:set_clipping_values(self._light:clipping_values():with_x(self._upper_clipping))
	self._light:set_clipping_values(self._light:clipping_values():with_y(self._lower_clipping))
	self._light:set_multiplier(LightIntensityDB:lookup(Idstring(self._intensity)))
	self._light:set_specular_multiplier(LightIntensityDB:lookup_specular_multiplier(Idstring(self._intensity)))
	self._light:set_falloff_exponent(self._falloff)
end

function LightOmni:set_enable(state)
	self._enable = state
	self._light:set_enable(self._enable)
end