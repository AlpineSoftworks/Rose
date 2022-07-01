--[[
	Name: src.lua
	Desc: Main source of all of Alpine
	ET: 6/30/2022
]]

local src = {Dir = script.Modules} -- In Github it would be script.Parent.Modules but eh it wouldn't work in .lua normally.
local userInterface = script.UserInterface

function src:loadFile(File)
	local Modules = {}
	
	assert(type(File) == "string", "err @ src.lua => loadFile func: 0x001, Argument required must be a string.")
	
	for i,modules in pairs(src.Dir:GetChildren()) do
		if modules:IsA("ModuleScript") and modules.Name == File then -- checking if the module required exists and if the module required is the ModuleScript class
			table.insert(Modules, File) -- adding the name into the table
		elseif modules:IsA("ModuleScript") and modules.Name ~= File then
			error("err @ src.lua => loadFile func: 0x002, Directory/file required does not exist.", 1)
		end
	end

	return require(src.Dir[Modules[1]]) -- indexes the first argument and requires the module from the directory @ line 7
end

local RandomStr = src:loadFile("RandomStr")
local Tween = src:loadFile("Tween")

function src:Initiate(Arg)
	--// Checking if the required params exist
	assert(Arg.HideGUI == nil or Arg.Logo == nil or Arg.Name == nil or Arg.Slogan == nil, "err @ src.lua => Initiate func: 0x003, Argument required does not exist.")
	local getGUIname = Arg.Name
	
	if Arg.HideGUI then
		getGUIname = RandomStr()
	end
	
	local UI = Instance.new("ScreenGui")
	UI.Name = getGUIname
	UI.Parent = game.CoreGui.RobloxGui -- RobloxGui protection!!111!

	local MainFrame = userInterface.Main:Clone()
	MainFrame.Parent = UI

	MainFrame.Background.Information.Logo = Arg.Logo
	MainFrame.Background.Information.uName = Arg.Name
	MainFrame.Background.Information.Slogan = Arg.Slogan

	MainFrame.Background.Options.close.MouseEnter:Connect(function()
		Tween(MainFrame.Background.Options.close, {ImageColor3 = Color3.fromRGB(234, 46, 50)}, .5)
	end)

	MainFrame.Background.Options.close.MouseLeave:Connect(function()
		Tween(MainFrame.Background.Options.close, {ImageColor3 = Color3.fromRGB(255, 255, 255)}, .5)
	end)

	MainFrame.Background.Options.close.MouseButton1Click:Connect(function()
		UI:Destroy()
	end)

	local Tabs = {}
	Tabs.isFirst = true

	function Tabs:Tab(TArg)
		local tabTotal = {}
		local isActive = false
		
		assert(TArg.Name == nil or TArg.Icon == nil or TArg.TipColor == nil or TArg.IconColor == nil, "err @ src.lua => Initiate => Tabs:Tab func: 0x004, Argument required does not exist.")
		
		-- settings things up with the arguments
		local newTab = userInterface.NormalTab:Clone()
		newTab.Parent = MainFrame.Background.Tabs
		
		
		local newButton = userInterface.ButtonDemo:Clone()
		newButton.Background.tabName.Text = TArg.Name
		newButton.Background.Logo.Image = TArg.Icon
		newButton.Background.Logo.ImageColor3 = TArg.LogoColor
		newButton.Background.Tip.BackgroundColor = TArg.IconColor
		
		newButton.Background.MouseEnter:Connect(function()
			if not isActive then -- checking if the user didn't activate the frame
				Tween(newButton.Background.Tip, {BackgroundTransparency = 0.15}, .6)
			end
		end)
		newButton.Background.MouseLeave:Connect(function()
			if not isActive then -- checking if the user didn't activate the frame
				Tween(newButton.Background.Tip, {BackgroundTransparency = 1}, .6)
			end
		end)
		
		newButton.Background.MouseButton1Click:Connect(function()
			
			if isActive == false then
				task.spawn(function()
					Tween(newButton.Background.Tip, {BackgroundTransparency = 0}, .6)
				end)
				
				for i,v in pairs(MainFrame.Background.Tabs:GetChildren()) do
					if v.Name == newTab.Name then
						v.Visible = false
					end
					newTab.Visible = true
				end
			elseif isActive == true then
				task.spawn(function()
					Tween(newButton.Background.Tip, {BackgroundTransparency = 1}, .6)
				end)
				
				newTab.Visible = false
				for i,v in pairs(MainFrame.Background.Tabs:GetChildren()) do
					if v.Visible == true then
						break
					else
						MainFrame.Background['404'].Visble = true
					end
				end
			end
			
			isActive = not isActive
		end)
	end
	
	return Tabs
end

return src

