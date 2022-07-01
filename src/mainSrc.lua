local rbxmSuite = loadstring(game:HttpGetAsync("https://github.com/richie0866/rbxm-suite/releases/latest/download/rbxm-suite.lua"))()
local RoseRel = rbxmSuite.download("AlpineSoftworks/Rose@latest", "mainSource.rbxm")
local GET = rbxmSuite.launch(RoseRel)
local src = rbxmSuite.require("src")

return src