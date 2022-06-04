# Rose
### ⚠ This is not the current / official documentation planned for Rose. ⚠

## Initate Rose
```lua
local Rose = loadstring(game:HttpGet('https://raw.githubusercontent.com/AlpineSoftworks/Rose/main/Source/MainTheme.lua'))():Initate('Rose', true)
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

## Create Toggle
```lua
local Toggle = Tab:CreateToggle('Toggle', false, function(a)
  if a then
    print('Toggle is on!')
  elseif not a then
    print('Toggle is off!')
  end
end)

--[[
  [1] = <string> => Name of toggle.
  [2] = <bool> => Default mode of the toggle.
  [3] = <function> => Does something when clicked.
]]
```

## Create Slider
```lua
local Slider = Tab:Create('Slider', 0, 150, function(a)
  print(a)
  if a == 0 then
    print('0 omg')
  end
end)

--[[
  [1] = <string> => Name of slider.
  [2] = <number> => Minimum.
  [3] = <number> => Maximum.
  [4] = <function> => Does something when moved.
]]
```
