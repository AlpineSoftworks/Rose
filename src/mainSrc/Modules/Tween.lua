--// [?] Used this module to make animations easier.

local tween = game:GetService("TweenService")
local tweeninfo = TweenInfo.new

local Tween = function(o, p, d, ...)
	tween:Create(o, tweeninfo(d, ...), p):Play()
end

return Tween
