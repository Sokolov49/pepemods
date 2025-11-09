Hooks:PostHook(PlayerTweakData, "init", "gravity_init", function(self, tweak_data)
	self.gravity = 1275
	self.stances.default.standard.head.translation = Vector3(0, 0, 165) -- 165 for actual height
end)