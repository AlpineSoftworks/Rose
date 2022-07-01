local rbxmSuite = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/richie0866/rbxm-suite/master/src/rbxm-suite.lua"))()
local RoseRel = rbxmSuite.download("AlpineSoftworks/Rose@latest", "mainSource.rbxm")
local GET = rbxmSuite.launch(RoseRel)
local src = rbxmSuite.require("Rose/src")

return src
