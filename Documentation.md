# Rose

## Initate Rose
```lua
local Rose = loadstring(game:HttpGet('https://raw.githubusercontent.com/CrytSoftware/Rose/main/Source/MainTheme.lua'))():Initate('Rose', true)
--[[
  [1] = <string> => Name of script.
  [2] = <bool> => Make screengui a random string making it harder to detect.
]]
```

## Create Tab
```lua
local Tab = Rose:CreateTab('Tab', 'rbxassetid://id', false)

--[[
  [1] = <string> => Name of tab.
  [2] = <string> => Id of icon.
  [3] = <bool> => Settings Tab (You can save/load settings of script).
]]
```

## Create Button
```lua
local Button = Tab:CreateButton('Button', 'Description', function()
  print('Clicked Button')
end)

--[[
  [1] = <string> => Name of button.
  [2] = <string> => Description of button.
  [3] = <function> => Does something when clicked.
]]
```
