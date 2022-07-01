local rbxmSuite = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/rbxm-suite/master/src/rbxm-suite.lua"))()
local RoseRel = rbxmSuite.download("AlpineSoftworks/Rose@latest", "mainSource.rbxm")
local GET = rbxmSuite.launch(RoseRel)
GET.Parent = game.CoreGui.RobloxGui
local src = rbxmSuite.require(GET.src)

return src
