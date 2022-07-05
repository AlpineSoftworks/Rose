local rbxmSuite = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/rbxm-suite/master/src/rbxm-suite.lua"))()
local RoseRel = rbxmSuite.download("AlpineSoftworks/Rose@v0.0.1T", "mainSource.rbxm")
local GET = rbxmSuite.launch(RoseRel)
print(GET.Parent)
GET.Parent = game.CoreGui
local src = rbxmSuite.require(GET.src)

return src
