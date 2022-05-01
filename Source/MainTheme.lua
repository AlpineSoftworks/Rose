local Rose = {}

local tween = game:GetService("TweenService")
local tweeninfo = TweenInfo.new
local input = game:GetService("UserInputService")
local run = game:GetService("RunService")

function Rose:rString()
	local l = math.random(5,35)
	local a = {}
	for v = 1, l do
		a[v] = string.char(math.random(35,130))
	end
	
	return table.concat(a)
end

function Rose:Tween(o, p, d, ...)
	tween:Create(o, tweeninfo(d, ...), p):Play()
end

function Rose:Drag(f, p)
	local dragging = false
	local dragInput, mousePos, framePos

	f.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			mousePos = input.Position
			framePos = p.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	f.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)

	input.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			local delta = input.Position - mousePos
			p.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
		end
	end)
end

function Rose:Initiate(n, p)
	n = n or "Rose"
	p = p or false
	
	Rose.MainName = n
	
	for g,gui in pairs(game.CoreGui:GetChildren()) do
		if gui:IsA("ScreenGui") then
			for y,i in pairs(gui:GetDescendants()) do
				if i:IsA("TextLabel") then
					if i.Text == "<b>"..Rose.MainName.."</b>" then
						gui:Destroy()
					else
						break
					end	
				end
			end
		end
	end
	
	if p then
		n = Rose:rString()
	end
	
	local RoseLib = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local shadowHolder = Instance.new("Frame")
	local umbraShadow = Instance.new("ImageLabel")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local penumbraShadow = Instance.new("ImageLabel")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
	local ambientShadow = Instance.new("ImageLabel")
	local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
	local HeadControl = Instance.new("Frame")
	local Name = Instance.new("TextLabel")
	local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local FrameControl = Instance.new("Frame")
	local close = Instance.new("ImageButton")
	local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
	local Line = Instance.new("Frame")
	local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
	local ItemControl = Instance.new("Frame")
	local Search = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Line_2 = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")
	local search = Instance.new("ImageButton")
	local UIAspectRatioConstraint_12 = Instance.new("UIAspectRatioConstraint")
	local SearchText = Instance.new("TextBox")
	local UIAspectRatioConstraint_13 = Instance.new("UIAspectRatioConstraint")
	local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint_14 = Instance.new("UIAspectRatioConstraint")
	local Holder = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local UIAspectRatioConstraint_23 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_24 = Instance.new("UIAspectRatioConstraint")
	local TabControl = Instance.new("Frame")
	local Slider = Instance.new("Frame")
	local UICorner_10 = Instance.new("UICorner")
	local shadowHolder_3 = Instance.new("Frame")
	local umbraShadow_3 = Instance.new("ImageLabel")
	local UIAspectRatioConstraint_35 = Instance.new("UIAspectRatioConstraint")
	local penumbraShadow_3 = Instance.new("ImageLabel")
	local UIAspectRatioConstraint_36 = Instance.new("UIAspectRatioConstraint")
	local ambientShadow_3 = Instance.new("ImageLabel")
	local UIAspectRatioConstraint_37 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_38 = Instance.new("UIAspectRatioConstraint")
	local ButtonName_2 = Instance.new("TextLabel")
	local UITextSizeConstraint_9 = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint_39 = Instance.new("UIAspectRatioConstraint")
	local Background = Instance.new("Frame")
	local UICorner_11 = Instance.new("UICorner")
	local UIAspectRatioConstraint_40 = Instance.new("UIAspectRatioConstraint")
	local Slider_2 = Instance.new("Frame")
	local UICorner_12 = Instance.new("UICorner")
	local Interact_4 = Instance.new("TextButton")
	local UICorner_13 = Instance.new("UICorner")
	local UITextSizeConstraint_10 = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint_41 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_42 = Instance.new("UIAspectRatioConstraint")
	local Text = Instance.new("TextBox")
	local UICorner_14 = Instance.new("UICorner")
	local UITextSizeConstraint_11 = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint_43 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_44 = Instance.new("UIAspectRatioConstraint")
	local TextBox = Instance.new("Frame")
	local UICorner_15 = Instance.new("UICorner")
	local shadowHolder_4 = Instance.new("Frame")
	local umbraShadow_4 = Instance.new("ImageLabel")
	local UIAspectRatioConstraint_45 = Instance.new("UIAspectRatioConstraint")
	local penumbraShadow_4 = Instance.new("ImageLabel")
	local UIAspectRatioConstraint_46 = Instance.new("UIAspectRatioConstraint")
	local ambientShadow_4 = Instance.new("ImageLabel")
	local UIAspectRatioConstraint_47 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_48 = Instance.new("UIAspectRatioConstraint")
	local ButtonName_3 = Instance.new("TextLabel")
	local UITextSizeConstraint_12 = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint_49 = Instance.new("UIAspectRatioConstraint")
	local Background_2 = Instance.new("Frame")
	local UICorner_16 = Instance.new("UICorner")
	local UIAspectRatioConstraint_50 = Instance.new("UIAspectRatioConstraint")
	local Text_2 = Instance.new("TextBox")
	local UICorner_17 = Instance.new("UICorner")
	local UITextSizeConstraint_13 = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint_51 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_52 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_70 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_71 = Instance.new("UIAspectRatioConstraint")
	local UIStroke = Instance.new("UIStroke")
	local UIStroke_1 = Instance.new("UIStroke")
	local UIStroke_2 = Instance.new("UIStroke")
	local UIStroke_3 = Instance.new("UIStroke")
	local UIStroke_4 = Instance.new("UIStroke")
	local UIStroke_5 = Instance.new("UIStroke")
	local UIStroke_6 = Instance.new("UIStroke")
	local UIStroke_7 = Instance.new("UIStroke")
	local UIStroke_8 = Instance.new("UIStroke")
	local UIStroke_9 = Instance.new("UIStroke")
	local UIStroke_10 = Instance.new("UIStroke")
	local UIStroke_11 = Instance.new("UIStroke")

	RoseLib.Name = "RoseLib"
	RoseLib.Parent = game.CoreGui
	RoseLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	RoseLib.ResetOnSpawn = false

	Main.Name = "Main"
	Main.Parent = RoseLib
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(24, 25, 29)
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0.243229166, 0, 0.529201448, 0)
	Main.ZIndex = 999999999

	UIStroke.Parent = Main
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Thickness = 1.5
	UIStroke.Color = Color3.fromRGB(60, 66, 70)

	UICorner.CornerRadius = UDim.new(0, 5)
	UICorner.Parent = Main

	UIAspectRatioConstraint.Parent = Main
	UIAspectRatioConstraint.AspectRatio = 1.052

	shadowHolder.Name = "shadowHolder"
	shadowHolder.Parent = Main
	shadowHolder.AnchorPoint = Vector2.new(0.5, 0.5)
	shadowHolder.BackgroundTransparency = 1.000
	shadowHolder.Position = UDim2.new(0.5, 0, 0.495495498, 0)
	shadowHolder.Size = UDim2.new(1.02909172, 0, 1.04735029, 0)

	umbraShadow.Name = "umbraShadow"
	umbraShadow.Parent = shadowHolder
	umbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	umbraShadow.BackgroundTransparency = 1.000
	umbraShadow.Position = UDim2.new(0.5, 0, 0.506451309, 0)
	umbraShadow.Size = UDim2.new(1.00624239, 0, 1.00645125, 0)
	umbraShadow.Image = "rbxassetid://1316045217"
	umbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	umbraShadow.ImageTransparency = 0.860
	umbraShadow.ScaleType = Enum.ScaleType.Slice
	umbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

	UIAspectRatioConstraint_2.Parent = umbraShadow
	UIAspectRatioConstraint_2.AspectRatio = 1.033

	penumbraShadow.Name = "penumbraShadow"
	penumbraShadow.Parent = shadowHolder
	penumbraShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	penumbraShadow.BackgroundTransparency = 1.000
	penumbraShadow.Position = UDim2.new(0.5, 0, 0.506451309, 0)
	penumbraShadow.Size = UDim2.new(1.00624239, 0, 1.00645125, 0)
	penumbraShadow.Image = "rbxassetid://1316045217"
	penumbraShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	penumbraShadow.ImageTransparency = 0.880
	penumbraShadow.ScaleType = Enum.ScaleType.Slice
	penumbraShadow.SliceCenter = Rect.new(10, 10, 118, 118)

	UIAspectRatioConstraint_3.Parent = penumbraShadow
	UIAspectRatioConstraint_3.AspectRatio = 1.033

	ambientShadow.Name = "ambientShadow"
	ambientShadow.Parent = shadowHolder
	ambientShadow.AnchorPoint = Vector2.new(0.5, 0.5)
	ambientShadow.BackgroundTransparency = 1.000
	ambientShadow.Position = UDim2.new(0.5, 0, 0.506451309, 0)
	ambientShadow.Size = UDim2.new(1.00624239, 0, 1.00645125, 0)
	ambientShadow.Image = "rbxassetid://1316045217"
	ambientShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
	ambientShadow.ImageTransparency = 0.880
	ambientShadow.ScaleType = Enum.ScaleType.Slice
	ambientShadow.SliceCenter = Rect.new(10, 10, 118, 118)

	UIAspectRatioConstraint_4.Parent = ambientShadow
	UIAspectRatioConstraint_4.AspectRatio = 1.033

	UIAspectRatioConstraint_5.Parent = shadowHolder
	UIAspectRatioConstraint_5.AspectRatio = 1.033

	HeadControl.Name = "HeadControl"
	HeadControl.Parent = Main
	HeadControl.AnchorPoint = Vector2.new(0.5, 0.5)
	HeadControl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	HeadControl.BackgroundTransparency = 1.000
	HeadControl.BorderSizePixel = 0
	HeadControl.Position = UDim2.new(0.5, 0, 0.0628239363, 0)
	HeadControl.Size = UDim2.new(0.999999881, 0, 0.125647873, 0)
	HeadControl.ZIndex = 999999999

	Name.Name = "Name"
	Name.Parent = HeadControl
	Name.AnchorPoint = Vector2.new(0.5, 0.5)
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.BorderSizePixel = 0
	Name.Position = UDim2.new(0.261593193, 0, 0.431565911, 0)
	Name.Size = UDim2.new(0.461804569, 0, 0.370130599, 0)
	Name.ZIndex = 999999999
	Name.Font = Enum.Font.SourceSansBold
	Name.Text = "Rose Library"
	Name.TextColor3 = Color3.fromRGB(86, 196, 255)
	Name.TextScaled = true
	Name.TextSize = 22.000
	Name.TextWrapped = true
	Name.TextXAlignment = Enum.TextXAlignment.Left

	UIAspectRatioConstraint_6.Parent = Name
	UIAspectRatioConstraint_6.AspectRatio = 10.444

	UITextSizeConstraint.Parent = Name
	UITextSizeConstraint.MaxTextSize = 22

	FrameControl.Name = "FrameControl"
	FrameControl.Parent = HeadControl
	FrameControl.AnchorPoint = Vector2.new(0.5, 0.5)
	FrameControl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FrameControl.BackgroundTransparency = 1.000
	FrameControl.BorderSizePixel = 0
	FrameControl.Position = UDim2.new(0.816738844, 0, 0.43635571, 0)
	FrameControl.Size = UDim2.new(0.365795344, 0, 0.872711539, 0)
	FrameControl.ZIndex = 999999999

	close.Name = "close"
	close.Parent = FrameControl
	close.AnchorPoint = Vector2.new(0.5, 0.5)
	close.BackgroundTransparency = 1.000
	close.Position = UDim2.new(0.860000014, 0, 0.5, 0)
	close.Size = UDim2.new(0.150379702, 0, 0.568181872, 0)
	close.ZIndex = 999999999
	close.Image = "rbxassetid://3926305904"
	close.ImageRectOffset = Vector2.new(924, 724)
	close.ImageRectSize = Vector2.new(36, 36)

	UIAspectRatioConstraint_7.Parent = close

	UIAspectRatioConstraint_8.Parent = FrameControl
	UIAspectRatioConstraint_8.AspectRatio = 3.509

	UIAspectRatioConstraint_9.Parent = HeadControl
	UIAspectRatioConstraint_9.AspectRatio = 8.371

	Line.Name = "Line"
	Line.Parent = HeadControl
	Line.AnchorPoint = Vector2.new(0.5, 0.5)
	Line.BackgroundColor3 = Color3.fromRGB(60, 66, 70)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0.5, 0, 0.824999988, 0)
	Line.Size = UDim2.new(1.00000012, 0, 0.0179251134, 0)

	UIAspectRatioConstraint_10.Parent = Line
	UIAspectRatioConstraint_10.AspectRatio = 467.000

	ItemControl.Name = "ItemControl"
	ItemControl.Parent = Main
	ItemControl.AnchorPoint = Vector2.new(0.5, 0.5)
	ItemControl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ItemControl.BackgroundTransparency = 1.000
	ItemControl.BorderSizePixel = 0
	ItemControl.Position = UDim2.new(0.205562487, 0, 0.569571137, 0)
	ItemControl.Size = UDim2.new(0.411124915, 0, 0.860857666, 0)
	ItemControl.ZIndex = 999999999

	Search.Name = "Search"
	Search.Parent = ItemControl
	Search.AnchorPoint = Vector2.new(0.5, 0.5)
	Search.BackgroundColor3 = Color3.fromRGB(30, 31, 32)
	Search.BorderSizePixel = 0
	Search.ClipsDescendants = true
	Search.Position = UDim2.new(0.50000006, 0, 0.0431511216, 0)
	Search.Size = UDim2.new(0.886724412, 0, 0.0751754418, 0)
	Search.ZIndex = 999999999

	UIStroke_1.Parent = Search
	UIStroke_1.Color = Color3.fromRGB(41, 44, 47)
	UIStroke_1.Thickness = 1
	UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual

	UICorner_2.CornerRadius = UDim.new(0, 5)
	UICorner_2.Parent = Search

	Line_2.Name = "Line"
	Line_2.Parent = Search
	Line_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Line_2.BackgroundColor3 = Color3.fromRGB(70, 174, 227)
	Line_2.BorderSizePixel = 0
	Line_2.Position = UDim2.new(0.499626368, 0, 0.931034505, 0)
	Line_2.ZIndex = 999999999

	UICorner_3.CornerRadius = UDim.new(0, 2)
	UICorner_3.Parent = Line_2

	UIAspectRatioConstraint_11.Parent = Line_2
	UIAspectRatioConstraint_11.AspectRatio = 63.000

	search.Name = "search"
	search.Parent = Search
	search.AnchorPoint = Vector2.new(0.5, 0.5)
	search.BackgroundTransparency = 1.000
	search.Position = UDim2.new(0.930000007, 0, 0.5, 0)
	search.Size = UDim2.new(0.0899470896, 0, 0.586206913, 0)
	search.ZIndex = 999999999
	search.Image = "rbxassetid://3926305904"
	search.ImageRectOffset = Vector2.new(964, 324)
	search.ImageRectSize = Vector2.new(36, 36)

	UIAspectRatioConstraint_12.Parent = search

	SearchText.Name = "SearchText"
	SearchText.Parent = Search
	SearchText.AnchorPoint = Vector2.new(0.5, 0.5)
	SearchText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SearchText.BackgroundTransparency = 1.000
	SearchText.BorderSizePixel = 0
	SearchText.Position = UDim2.new(0.402380884, 0, 0.5, 0)
	SearchText.Size = UDim2.new(0.751322746, 0, 0.862068951, 0)
	SearchText.ZIndex = 999999999
	SearchText.Font = Enum.Font.SourceSansBold
	SearchText.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
	SearchText.PlaceholderText = "Search for a tab"
	SearchText.Text = ""
	SearchText.TextColor3 = Color3.fromRGB(255, 255, 255)
	SearchText.TextScaled = true
	SearchText.TextSize = 14.000
	SearchText.TextWrapped = true
	SearchText.TextXAlignment = Enum.TextXAlignment.Left

	UIAspectRatioConstraint_13.Parent = SearchText
	UIAspectRatioConstraint_13.AspectRatio = 5.680

	UITextSizeConstraint_2.Parent = SearchText
	UITextSizeConstraint_2.MaxTextSize = 14

	UIAspectRatioConstraint_14.Parent = Search
	UIAspectRatioConstraint_14.AspectRatio = 5.925

	Holder.Name = "Holder"
	Holder.Parent = ItemControl
	Holder.Active = true
	Holder.AnchorPoint = Vector2.new(0.5, 0.5)
	Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Holder.BackgroundTransparency = 1.000
	Holder.BorderSizePixel = 0
	Holder.Position = UDim2.new(0.524999976, 0, 0.550000012, 0)
	Holder.Size = UDim2.new(0.928949416, 0, 0.830392838, 0)
	Holder.ZIndex = 999999999
	Holder.ScrollBarThickness = 2

	UIListLayout.Parent = Holder
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)

	UIAspectRatioConstraint_23.Parent = Holder
	UIAspectRatioConstraint_23.AspectRatio = 0.562

	UIAspectRatioConstraint_24.Parent = ItemControl
	UIAspectRatioConstraint_24.AspectRatio = 0.502

	TabControl.Name = "TabControl"
	TabControl.Parent = Main
	TabControl.AnchorPoint = Vector2.new(0.5, 0.5)
	TabControl.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabControl.BackgroundTransparency = 1.000
	TabControl.BorderSizePixel = 0
	TabControl.Position = UDim2.new(0.700362325, 0, 0.555180192, 0)
	TabControl.Size = UDim2.new(0.550321221, 0, 0.826576591, 0)
	TabControl.ZIndex = 999999999

	--[[Slider.Name = "Slider"
	Slider.Parent = Tab
	Slider.AnchorPoint = Vector2.new(0.5, 0.5)
	Slider.BackgroundColor3 = Color3.fromRGB(40, 43, 52)
	Slider.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Slider.Position = UDim2.new(0.719844341, 0, 0.309506953, 0)
	Slider.Size = UDim2.new(0.949324548, 0, 0.127771139, 0)
	Slider.ZIndex = 999999999
	]]

	UIStroke_3.Parent = Slider
	UIStroke_3.Color = Color3.fromRGB(82, 85, 92)
	UIStroke_3.Thickness = 1.5
	UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	UICorner_10.CornerRadius = UDim.new(0, 5)
	UICorner_10.Parent = Slider

	shadowHolder_3.Name = "shadowHolder"
	shadowHolder_3.Parent = Slider
	shadowHolder_3.AnchorPoint = Vector2.new(0.5, 0.5)
	shadowHolder_3.BackgroundTransparency = 1.000
	shadowHolder_3.Position = UDim2.new(0.5, 0, 0.5, 0)
	shadowHolder_3.Size = UDim2.new(1.03765702, 0, 1.30861139, 0)

	umbraShadow_3.Name = "umbraShadow"
	umbraShadow_3.Parent = shadowHolder_3
	umbraShadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
	umbraShadow_3.BackgroundTransparency = 1.000
	umbraShadow_3.Position = UDim2.new(0.5, 0, 0.557312667, 0)
	umbraShadow_3.Size = UDim2.new(1.01214755, 0, 1.05731261, 0)
	umbraShadow_3.Image = "rbxassetid://1316045217"
	umbraShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	umbraShadow_3.ImageTransparency = 0.860
	umbraShadow_3.ScaleType = Enum.ScaleType.Slice
	umbraShadow_3.SliceCenter = Rect.new(10, 10, 118, 118)

	UIAspectRatioConstraint_35.Parent = umbraShadow_3
	UIAspectRatioConstraint_35.AspectRatio = 4.516

	penumbraShadow_3.Name = "penumbraShadow"
	penumbraShadow_3.Parent = shadowHolder_3
	penumbraShadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
	penumbraShadow_3.BackgroundTransparency = 1.000
	penumbraShadow_3.Position = UDim2.new(0.5, 0, 0.557312667, 0)
	penumbraShadow_3.Size = UDim2.new(1.01214755, 0, 1.05731261, 0)
	penumbraShadow_3.Image = "rbxassetid://1316045217"
	penumbraShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	penumbraShadow_3.ImageTransparency = 0.880
	penumbraShadow_3.ScaleType = Enum.ScaleType.Slice
	penumbraShadow_3.SliceCenter = Rect.new(10, 10, 118, 118)

	UIAspectRatioConstraint_36.Parent = penumbraShadow_3
	UIAspectRatioConstraint_36.AspectRatio = 4.516

	ambientShadow_3.Name = "ambientShadow"
	ambientShadow_3.Parent = shadowHolder_3
	ambientShadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
	ambientShadow_3.BackgroundTransparency = 1.000
	ambientShadow_3.Position = UDim2.new(0.5, 0, 0.557312667, 0)
	ambientShadow_3.Size = UDim2.new(1.01214755, 0, 1.05731261, 0)
	ambientShadow_3.Image = "rbxassetid://1316045217"
	ambientShadow_3.ImageColor3 = Color3.fromRGB(0, 0, 0)
	ambientShadow_3.ImageTransparency = 0.880
	ambientShadow_3.ScaleType = Enum.ScaleType.Slice
	ambientShadow_3.SliceCenter = Rect.new(10, 10, 118, 118)

	UIAspectRatioConstraint_37.Parent = ambientShadow_3
	UIAspectRatioConstraint_37.AspectRatio = 4.516

	UIAspectRatioConstraint_38.Parent = shadowHolder_3
	UIAspectRatioConstraint_38.AspectRatio = 4.718

	ButtonName_2.Name = "ButtonName"
	ButtonName_2.Parent = Slider
	ButtonName_2.AnchorPoint = Vector2.new(0.5, 0.5)
	ButtonName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ButtonName_2.BackgroundTransparency = 1.000
	ButtonName_2.BorderSizePixel = 0
	ButtonName_2.Position = UDim2.new(0.21759674, 0, 0.5, 0)
	ButtonName_2.Size = UDim2.new(0.352941185, 0, 0.375, 0)
	ButtonName_2.ZIndex = 999999999
	ButtonName_2.Font = Enum.Font.SourceSansSemibold
	ButtonName_2.Text = "Slider"
	ButtonName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	ButtonName_2.TextScaled = true
	ButtonName_2.TextSize = 17.000
	ButtonName_2.TextWrapped = true
	ButtonName_2.TextXAlignment = Enum.TextXAlignment.Left

	UITextSizeConstraint_9.Parent = ButtonName_2
	UITextSizeConstraint_9.MaxTextSize = 17

	UIAspectRatioConstraint_39.Parent = ButtonName_2
	UIAspectRatioConstraint_39.AspectRatio = 5.600

	Background.Name = "Background"
	Background.Parent = Slider
	Background.AnchorPoint = Vector2.new(0.5, 0.5)
	Background.BackgroundColor3 = Color3.fromRGB(33, 35, 43)
	Background.Position = UDim2.new(0.5, 0, 0.5, 0)
	Background.Size = UDim2.new(1, 0, 1, 0)
	Background.ZIndex = 99999999

	UICorner_11.CornerRadius = UDim.new(0, 5)
	UICorner_11.Parent = Background

	UIAspectRatioConstraint_40.Parent = Background
	UIAspectRatioConstraint_40.AspectRatio = 5.950

	Slider_2.Name = "Slider"
	Slider_2.Parent = Slider
	Slider_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Slider_2.BackgroundColor3 = Color3.fromRGB(76, 194, 255)
	Slider_2.BorderSizePixel = 0
	Slider_2.Position = UDim2.new(0.690999985, 0, 0.370000005, 0)
	Slider_2.Size = UDim2.new(0.533613443, 0, 0.100000001, 0)
	Slider_2.ZIndex = 999999999

	UICorner_12.Parent = Slider_2

	Interact_4.Name = "Interact"
	Interact_4.Parent = Slider_2
	Interact_4.AnchorPoint = Vector2.new(0.5, 0.5)
	Interact_4.BackgroundColor3 = Color3.fromRGB(76, 194, 255)
	Interact_4.BorderSizePixel = 0
	Interact_4.Position = UDim2.new(0.5, 0, 0.5, 0)
	Interact_4.Size = UDim2.new(0.102362208, 0, 3.25, 0)
	Interact_4.ZIndex = 999999999
	Interact_4.AutoButtonColor = false
	Interact_4.Font = Enum.Font.SourceSans
	Interact_4.Text = ""
	Interact_4.TextColor3 = Color3.fromRGB(0, 0, 0)
	Interact_4.TextScaled = true
	Interact_4.TextSize = 14.000
	Interact_4.TextWrapped = true

	UIStroke_4.Parent = Slider_2
	UIStroke_4.Color = Color3.fromRGB(55, 58, 62)
	UIStroke_4.Thickness = 2
	UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	UICorner_13.Parent = Interact_4

	UITextSizeConstraint_10.Parent = Interact_4
	UITextSizeConstraint_10.MaxTextSize = 14

	UIAspectRatioConstraint_41.Parent = Interact_4

	UIAspectRatioConstraint_42.Parent = Slider_2
	UIAspectRatioConstraint_42.AspectRatio = 31.750

	Text.Name = "Text"
	Text.Parent = Slider
	Text.AnchorPoint = Vector2.new(0.5, 0.5)
	Text.BackgroundColor3 = Color3.fromRGB(30, 31, 32)
	Text.BorderSizePixel = 0
	Text.Position = UDim2.new(0.690999985, 0, 0.75999999, 0)
	Text.Size = UDim2.new(0.533613443, 0, 0.275000006, 0)
	Text.ZIndex = 999999999
	Text.Font = Enum.Font.SourceSansSemibold
	Text.PlaceholderText = "80"
	Text.Text = ""
	Text.TextColor3 = Color3.fromRGB(0, 0, 0)
	Text.TextScaled = true
	Text.TextSize = 14.000
	Text.TextWrapped = true

	UIStroke_5.Parent = Text
	UIStroke_5.Color = Color3.fromRGB(43, 46, 50)
	UIStroke_5.Thickness = 1
	UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	UICorner_14.CornerRadius = UDim.new(0, 3)
	UICorner_14.Parent = Text

	UITextSizeConstraint_11.Parent = Text
	UITextSizeConstraint_11.MaxTextSize = 14

	UIAspectRatioConstraint_43.Parent = Text
	UIAspectRatioConstraint_43.AspectRatio = 11.545

	UIAspectRatioConstraint_44.Parent = Slider
	UIAspectRatioConstraint_44.AspectRatio = 5.950

	--[[TextBox.Name = "TextBox"
	TextBox.Parent = Tab
	TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
	TextBox.BackgroundColor3 = Color3.fromRGB(40, 43, 52)
	TextBox.BorderColor3 = Color3.fromRGB(27, 42, 53)
	TextBox.Position = UDim2.new(0.719844341, 0, 0.46630004, 0)
	TextBox.Size = UDim2.new(0.949324548, 0, 0.127771139, 0)
	TextBox.ZIndex = 999999999]]

	UIStroke_6.Parent = TextBox
	UIStroke_6.Color = Color3.fromRGB(82, 85, 92)
	UIStroke_6.Thickness = 1.5
	UIStroke_6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	UICorner_15.CornerRadius = UDim.new(0, 5)
	UICorner_15.Parent = TextBox

	shadowHolder_4.Name = "shadowHolder"
	shadowHolder_4.Parent = TextBox
	shadowHolder_4.AnchorPoint = Vector2.new(0.5, 0.5)
	shadowHolder_4.BackgroundTransparency = 1.000
	shadowHolder_4.Position = UDim2.new(0.5, 0, 0.5, 0)
	shadowHolder_4.Size = UDim2.new(1.03765702, 0, 1.30861139, 0)

	umbraShadow_4.Name = "umbraShadow"
	umbraShadow_4.Parent = shadowHolder_4
	umbraShadow_4.AnchorPoint = Vector2.new(0.5, 0.5)
	umbraShadow_4.BackgroundTransparency = 1.000
	umbraShadow_4.Position = UDim2.new(0.5, 0, 0.557312667, 0)
	umbraShadow_4.Size = UDim2.new(1.01214755, 0, 1.05731261, 0)
	umbraShadow_4.Image = "rbxassetid://1316045217"
	umbraShadow_4.ImageColor3 = Color3.fromRGB(0, 0, 0)
	umbraShadow_4.ImageTransparency = 0.860
	umbraShadow_4.ScaleType = Enum.ScaleType.Slice
	umbraShadow_4.SliceCenter = Rect.new(10, 10, 118, 118)

	UIAspectRatioConstraint_45.Parent = umbraShadow_4
	UIAspectRatioConstraint_45.AspectRatio = 4.516

	penumbraShadow_4.Name = "penumbraShadow"
	penumbraShadow_4.Parent = shadowHolder_4
	penumbraShadow_4.AnchorPoint = Vector2.new(0.5, 0.5)
	penumbraShadow_4.BackgroundTransparency = 1.000
	penumbraShadow_4.Position = UDim2.new(0.5, 0, 0.557312667, 0)
	penumbraShadow_4.Size = UDim2.new(1.01214755, 0, 1.05731261, 0)
	penumbraShadow_4.Image = "rbxassetid://1316045217"
	penumbraShadow_4.ImageColor3 = Color3.fromRGB(0, 0, 0)
	penumbraShadow_4.ImageTransparency = 0.880
	penumbraShadow_4.ScaleType = Enum.ScaleType.Slice
	penumbraShadow_4.SliceCenter = Rect.new(10, 10, 118, 118)

	UIAspectRatioConstraint_46.Parent = penumbraShadow_4
	UIAspectRatioConstraint_46.AspectRatio = 4.516

	ambientShadow_4.Name = "ambientShadow"
	ambientShadow_4.Parent = shadowHolder_4
	ambientShadow_4.AnchorPoint = Vector2.new(0.5, 0.5)
	ambientShadow_4.BackgroundTransparency = 1.000
	ambientShadow_4.Position = UDim2.new(0.5, 0, 0.557312667, 0)
	ambientShadow_4.Size = UDim2.new(1.01214755, 0, 1.05731261, 0)
	ambientShadow_4.Image = "rbxassetid://1316045217"
	ambientShadow_4.ImageColor3 = Color3.fromRGB(0, 0, 0)
	ambientShadow_4.ImageTransparency = 0.880
	ambientShadow_4.ScaleType = Enum.ScaleType.Slice
	ambientShadow_4.SliceCenter = Rect.new(10, 10, 118, 118)

	UIAspectRatioConstraint_47.Parent = ambientShadow_4
	UIAspectRatioConstraint_47.AspectRatio = 4.516

	UIAspectRatioConstraint_48.Parent = shadowHolder_4
	UIAspectRatioConstraint_48.AspectRatio = 4.718

	ButtonName_3.Name = "ButtonName"
	ButtonName_3.Parent = TextBox
	ButtonName_3.AnchorPoint = Vector2.new(0.5, 0.5)
	ButtonName_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ButtonName_3.BackgroundTransparency = 1.000
	ButtonName_3.BorderSizePixel = 0
	ButtonName_3.Position = UDim2.new(0.218647167, 0, 0.5, 0)
	ButtonName_3.Size = UDim2.new(0.352941185, 0, 0.375, 0)
	ButtonName_3.ZIndex = 999999999
	ButtonName_3.Font = Enum.Font.SourceSansSemibold
	ButtonName_3.Text = "Text Box"
	ButtonName_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	ButtonName_3.TextScaled = true
	ButtonName_3.TextSize = 17.000
	ButtonName_3.TextWrapped = true
	ButtonName_3.TextXAlignment = Enum.TextXAlignment.Left

	UITextSizeConstraint_12.Parent = ButtonName_3
	UITextSizeConstraint_12.MaxTextSize = 17

	UIAspectRatioConstraint_49.Parent = ButtonName_3
	UIAspectRatioConstraint_49.AspectRatio = 5.600

	Background_2.Name = "Background"
	Background_2.Parent = TextBox
	Background_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Background_2.BackgroundColor3 = Color3.fromRGB(33, 35, 43)
	Background_2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Background_2.Size = UDim2.new(1, 0, 1, 0)
	Background_2.ZIndex = 99999999

	UICorner_16.CornerRadius = UDim.new(0, 5)
	UICorner_16.Parent = Background_2

	UIAspectRatioConstraint_50.Parent = Background_2
	UIAspectRatioConstraint_50.AspectRatio = 5.950

	Text_2.Name = "Text"
	Text_2.Parent = TextBox
	Text_2.AnchorPoint = Vector2.new(0.5, 0.5)
	Text_2.BackgroundColor3 = Color3.fromRGB(30, 31, 32)
	Text_2.BorderSizePixel = 0
	Text_2.Position = UDim2.new(0.692852139, 0, 0.495903015, 0)
	Text_2.Size = UDim2.new(0.529411793, 0, 0.699999988, 0)
	Text_2.ZIndex = 999999999
	Text_2.Font = Enum.Font.SourceSansSemibold
	Text_2.PlaceholderText = "Placeholder Text go brr"
	Text_2.Text = ""
	Text_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	Text_2.TextScaled = true
	Text_2.TextSize = 14.000
	Text_2.TextWrapped = true

	UIStroke_7.Parent = Text_2
	UIStroke_7.Color = Color3.fromRGB(43, 46, 50)
	UIStroke_7.Thickness = 1
	UIStroke_7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

	UICorner_17.CornerRadius = UDim.new(0, 3)
	UICorner_17.Parent = Text_2

	UITextSizeConstraint_13.Parent = Text_2
	UITextSizeConstraint_13.MaxTextSize = 14

	UIAspectRatioConstraint_51.Parent = Text_2
	UIAspectRatioConstraint_51.AspectRatio = 4.500

	UIAspectRatioConstraint_52.Parent = TextBox
	UIAspectRatioConstraint_52.AspectRatio = 5.950

	UIAspectRatioConstraint_71.Parent = TabControl
	UIAspectRatioConstraint_71.AspectRatio = 0.700
	
	SearchText.Focused:Connect(function()
		Line_2:TweenSize(UDim2.fromScale(1,0.1), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.08)
	end)
	SearchText.FocusLost:Connect(function()
		Line_2:TweenSize(UDim2.fromScale(0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.08)
	end)
	
	close.MouseButton1Click:Connect(function()
		Main:TweenSize(UDim2.fromScale(0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.4)
		task.wait(0.5)
		RoseLib:Destroy()
	end)
	
	local Tabs = {}
	Tabs.New = true
	
	function Tabs:CreateTab(tName, tID, isSettings)
		tName = tName or "Tab"
		tID = tID or "rbxassetid://7734040271"
		
		if not isSettings then
			local TabButton = Instance.new("Frame")
			local Icon_2 = Instance.new("ImageLabel")
			local UIAspectRatioConstraint_19 = Instance.new("UIAspectRatioConstraint")
			local TabText_2 = Instance.new("TextLabel")
			local UIAspectRatioConstraint_20 = Instance.new("UIAspectRatioConstraint")
			local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
			local Interact_2 = Instance.new("TextButton")
			local UICorner_6 = Instance.new("UICorner")
			local UIAspectRatioConstraint_21 = Instance.new("UIAspectRatioConstraint")
			local Tip_2 = Instance.new("Frame")
			local UICorner_7 = Instance.new("UICorner")
			local UIAspectRatioConstraint_22 = Instance.new("UIAspectRatioConstraint")
			local Tab = Instance.new("ScrollingFrame")
			local TabText_3 = Instance.new("TextLabel")
			local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
			local UIAspectRatioConstraint_25 = Instance.new("UIAspectRatioConstraint")
			local UIAspectRatioConstraint_26 = Instance.new("UIAspectRatioConstraint")
			local UIListLayout_2 = Instance.new("UIListLayout")

			TabButton.Name = tName
			TabButton.Parent = Holder
			TabButton.AnchorPoint = Vector2.new(0.5, 0.5)
			TabButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TabButton.BackgroundTransparency = 1.000
			TabButton.BorderSizePixel = 0
			TabButton.Position = UDim2.new(0.475180268, 0, 0.0660376176, 0)
			TabButton.Size = UDim2.new(0.949999988, 0, 0, 35)
			TabButton.ZIndex = 999999999

			Icon_2.Name = "Icon"
			Icon_2.Parent = TabButton
			Icon_2.AnchorPoint = Vector2.new(0.5, 0.5)
			Icon_2.BackgroundTransparency = 1.000
			Icon_2.Position = UDim2.new(0.100000001, 0, 0.5, 0)
			Icon_2.Size = UDim2.new(0.132908031, 0, 0.714285731, 0)
			Icon_2.ZIndex = 999999999
			Icon_2.Image = tID

			UIAspectRatioConstraint_19.Parent = Icon_2

			TabText_2.Name = "TabText"
			TabText_2.Parent = TabButton
			TabText_2.AnchorPoint = Vector2.new(0.5, 0.5)
			TabText_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TabText_2.BackgroundTransparency = 1.000
			TabText_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
			TabText_2.BorderSizePixel = 0
			TabText_2.Position = UDim2.new(0.569999993, 0, 0.5, 0)
			TabText_2.Size = UDim2.new(0.754917622, 0, 0.714285731, 0)
			TabText_2.ZIndex = 999999999
			TabText_2.Font = Enum.Font.SourceSansBold
			TabText_2.Text = tName
			TabText_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TabText_2.TextScaled = true
			TabText_2.TextSize = 16.000
			TabText_2.TextWrapped = true
			TabText_2.TextXAlignment = Enum.TextXAlignment.Left

			UIAspectRatioConstraint_20.Parent = TabText_2
			UIAspectRatioConstraint_20.AspectRatio = 5.680

			UITextSizeConstraint_4.Parent = TabText_2
			UITextSizeConstraint_4.MaxTextSize = 16

			Interact_2.Name = "Interact"
			Interact_2.Parent = TabButton
			Interact_2.AnchorPoint = Vector2.new(0.5, 0.5)
			Interact_2.BackgroundColor3 = Color3.fromRGB(30, 32, 36)
			Interact_2.BackgroundTransparency = 0.050
			Interact_2.BorderSizePixel = 0
			Interact_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			Interact_2.Size = UDim2.new(1, 0, 1, 0)
			Interact_2.ZIndex = 99999999
			Interact_2.AutoButtonColor = false
			Interact_2.Font = Enum.Font.SourceSans
			Interact_2.Text = ""
			Interact_2.TextColor3 = Color3.fromRGB(0, 0, 0)
			Interact_2.TextSize = 14.000

			UICorner_6.CornerRadius = UDim.new(0, 5)
			UICorner_6.Parent = Interact_2

			UIAspectRatioConstraint_21.Parent = TabButton
			UIAspectRatioConstraint_21.AspectRatio = 5.374

			Tip_2.Name = "Tip"
			Tip_2.Parent = TabButton
			Tip_2.AnchorPoint = Vector2.new(0.5, 0.5)
			Tip_2.BackgroundColor3 = Color3.fromRGB(75, 188, 247)
			Tip_2.BorderSizePixel = 0
			Tip_2.Position = UDim2.new(0.00999999978, 0, 0.5, 0)
			Tip_2.ZIndex = 999999999

			UICorner_7.Parent = Tip_2

			UIAspectRatioConstraint_22.Parent = Tip_2
			UIAspectRatioConstraint_22.AspectRatio = 0.364
			
			Tab.Name = tName
			Tab.Parent = TabControl
			Tab.Active = true
			Tab.AnchorPoint = Vector2.new(0.5, 0.5)
			Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Tab.BackgroundTransparency = 1.000
			Tab.BorderSizePixel = 0
			Tab.Position = UDim2.new(0.5, 0, 0.5, 0)
			Tab.Size = UDim2.new(1, 0, 1, 0)
			Tab.ZIndex = 999999999
			Tab.ScrollBarThickness = 2
			Tab.Visible = false

			TabText_3.Name = "TabText"
			TabText_3.Parent = Tab
			TabText_3.AnchorPoint = Vector2.new(0.5, 0.5)
			TabText_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TabText_3.BackgroundTransparency = 1.000
			TabText_3.BorderSizePixel = 0
			TabText_3.Position = UDim2.new(0.5, 0, 0.0188010726, 0)
			TabText_3.Size = UDim2.new(1, 0, 0.0376021527, 0)
			TabText_3.Font = Enum.Font.SourceSansBold
			TabText_3.Text = tName
			TabText_3.TextColor3 = Color3.fromRGB(255, 255, 255)
			TabText_3.TextScaled = true
			TabText_3.TextSize = 19.000
			TabText_3.TextWrapped = true
			TabText_3.TextXAlignment = Enum.TextXAlignment.Left

			UITextSizeConstraint_5.Parent = TabText_3
			UITextSizeConstraint_5.MaxTextSize = 19

			UIAspectRatioConstraint_25.Parent = TabText_3
			UIAspectRatioConstraint_25.AspectRatio = 9.312

			UIAspectRatioConstraint_26.Parent = Tab
			UIAspectRatioConstraint_26.AspectRatio = 0.700

			UIListLayout_2.Parent = Tab
			UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout_2.Padding = UDim.new(0, 5)
			
			if Tabs.New then
				Tabs.New = false
				Tab.Visible = true
				task.wait(0.5)
				Rose:Tween(Interact_2, {BackgroundColor3 = Color3.fromRGB(47, 50, 56)}, .3)
				Icon_2:TweenPosition(UDim2.new(0.139, 0,0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, .3)
				Rose:Tween(Icon_2, {ImageColor3 = Color3.fromRGB(86, 196, 255)}, .3)
				TabText_2:TweenPosition(UDim2.new(0.617, 0,0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, .3)
				task.wait(0.1)
				Tip_2:TweenSize(UDim2.new(0.047, 0,0.698, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, .3)
			end
			
			for y,e in pairs(ItemControl.Holder:GetChildren()) do
				if e:IsA("Frame") then
					e.Interact.MouseButton1Click:Connect(function()
						for k,j in pairs(ItemControl.Holder:GetChildren()) do
							if j:IsA("Frame") then
								if j.Name ~= e.Name then
									Tip_2:TweenSize(UDim2.new(0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, .3)
									task.wait(0.1)
									TabText_2:TweenPosition(UDim2.new(0.57, 0,0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, .3)
									Rose:Tween(Icon_2, {ImageColor3 = Color3.fromRGB(255, 255, 255)}, .3)
									Icon_2:TweenPosition(UDim2.new(0.1, 0,0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, .3)
									Rose:Tween(Interact_2, {BackgroundColor3 = Color3.fromRGB(30, 32, 36)}, .3)
								else
									for rat, s in pairs(ItemControl.Holder:GetChildren()) do
										if s:IsA("Frame") and s.Name ~= e.Name then
											Rose:Tween(s.Interact, {BackgroundColor3 = Color3.fromRGB(47, 50, 56)}, .3)
											s.Icon:TweenPosition(UDim2.new(0.139, 0,0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, .3)
											Rose:Tween(s.Icon, {ImageColor3 = Color3.fromRGB(86, 196, 255)}, .3)
											s.TabText:TweenPosition(UDim2.new(0.617, 0,0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, .3)
											task.wait(0.1)
											s.Tip:TweenSize(UDim2.new(0.047, 0,0.698, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, .3)
										end
									end
								end
							end
						end
						for r,t in next, TabControl:GetChildren() do
							if t:IsA("Frame") then
								t.Visible = false
							end
						end
						Tab.Visible = true
					end)
				end
			end
			
			local Items = {}

			function Items:CreateButton(bName, bDesc, callback)
				bName = bName or "Button"
				callback = callback or function() end
				
				local Button = Instance.new("Frame")
				local UICorner_8 = Instance.new("UICorner")
				local shadowHolder_2 = Instance.new("Frame")
				local umbraShadow_2 = Instance.new("ImageLabel")
				local UIAspectRatioConstraint_27 = Instance.new("UIAspectRatioConstraint")
				local penumbraShadow_2 = Instance.new("ImageLabel")
				local UIAspectRatioConstraint_28 = Instance.new("UIAspectRatioConstraint")
				local ambientShadow_2 = Instance.new("ImageLabel")
				local UIAspectRatioConstraint_29 = Instance.new("UIAspectRatioConstraint")
				local UIAspectRatioConstraint_30 = Instance.new("UIAspectRatioConstraint")
				local Interact_3 = Instance.new("TextButton")
				local UICorner_9 = Instance.new("UICorner")
				local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
				local UIAspectRatioConstraint_31 = Instance.new("UIAspectRatioConstraint")
				local ButtonDesc = Instance.new("TextLabel")
				local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
				local UIAspectRatioConstraint_32 = Instance.new("UIAspectRatioConstraint")
				local ButtonName = Instance.new("TextLabel")
				local UITextSizeConstraint_8 = Instance.new("UITextSizeConstraint")
				local UIAspectRatioConstraint_33 = Instance.new("UIAspectRatioConstraint")
				local UIAspectRatioConstraint_34 = Instance.new("UIAspectRatioConstraint")

				Button.Name = bName
				Button.Parent = Tab
				Button.AnchorPoint = Vector2.new(0.5, 0.5)
				Button.BackgroundColor3 = Color3.fromRGB(40, 43, 52)
				Button.BorderColor3 = Color3.fromRGB(27, 42, 53)
				Button.Position = UDim2.new(0.719844341, 0, 0.152713865, 0)
				Button.Size = UDim2.new(0.949324548, 0, 0.127771139, 0)
				Button.ZIndex = 999999999

				UIStroke_2.Parent = Button
				UIStroke_2.Color = Color3.fromRGB(82, 85, 92)
				UIStroke_2.Thickness = 1.5
				UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				UICorner_8.CornerRadius = UDim.new(0, 5)
				UICorner_8.Parent = Button

				shadowHolder_2.Name = "shadowHolder"
				shadowHolder_2.Parent = Button
				shadowHolder_2.AnchorPoint = Vector2.new(0.5, 0.5)
				shadowHolder_2.BackgroundTransparency = 1.000
				shadowHolder_2.Position = UDim2.new(0.5, 0, 0.5, 0)
				shadowHolder_2.Size = UDim2.new(1.03765702, 0, 1.30861139, 0)

				umbraShadow_2.Name = "umbraShadow"
				umbraShadow_2.Parent = shadowHolder_2
				umbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
				umbraShadow_2.BackgroundTransparency = 1.000
				umbraShadow_2.Position = UDim2.new(0.5, 0, 0.557312667, 0)
				umbraShadow_2.Size = UDim2.new(1.01214755, 0, 1.05731261, 0)
				umbraShadow_2.Image = "rbxassetid://1316045217"
				umbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
				umbraShadow_2.ImageTransparency = 0.860
				umbraShadow_2.ScaleType = Enum.ScaleType.Slice
				umbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

				UIAspectRatioConstraint_27.Parent = umbraShadow_2
				UIAspectRatioConstraint_27.AspectRatio = 4.516

				penumbraShadow_2.Name = "penumbraShadow"
				penumbraShadow_2.Parent = shadowHolder_2
				penumbraShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
				penumbraShadow_2.BackgroundTransparency = 1.000
				penumbraShadow_2.Position = UDim2.new(0.5, 0, 0.557312667, 0)
				penumbraShadow_2.Size = UDim2.new(1.01214755, 0, 1.05731261, 0)
				penumbraShadow_2.Image = "rbxassetid://1316045217"
				penumbraShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
				penumbraShadow_2.ImageTransparency = 0.880
				penumbraShadow_2.ScaleType = Enum.ScaleType.Slice
				penumbraShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

				UIAspectRatioConstraint_28.Parent = penumbraShadow_2
				UIAspectRatioConstraint_28.AspectRatio = 4.516

				ambientShadow_2.Name = "ambientShadow"
				ambientShadow_2.Parent = shadowHolder_2
				ambientShadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
				ambientShadow_2.BackgroundTransparency = 1.000
				ambientShadow_2.Position = UDim2.new(0.5, 0, 0.557312667, 0)
				ambientShadow_2.Size = UDim2.new(1.01214755, 0, 1.05731261, 0)
				ambientShadow_2.Image = "rbxassetid://1316045217"
				ambientShadow_2.ImageColor3 = Color3.fromRGB(0, 0, 0)
				ambientShadow_2.ImageTransparency = 0.880
				ambientShadow_2.ScaleType = Enum.ScaleType.Slice
				ambientShadow_2.SliceCenter = Rect.new(10, 10, 118, 118)

				UIAspectRatioConstraint_29.Parent = ambientShadow_2
				UIAspectRatioConstraint_29.AspectRatio = 4.516

				UIAspectRatioConstraint_30.Parent = shadowHolder_2
				UIAspectRatioConstraint_30.AspectRatio = 4.718

				Interact_3.Name = "Interact"
				Interact_3.Parent = Button
				Interact_3.AnchorPoint = Vector2.new(0.5, 0.5)
				Interact_3.BackgroundColor3 = Color3.fromRGB(33, 35, 43)
				Interact_3.Position = UDim2.new(0.5, 0, 0.5, 0)
				Interact_3.Size = UDim2.new(1, 0, 1, 0)
				Interact_3.ZIndex = 999999999
				Interact_3.AutoButtonColor = false
				Interact_3.Font = Enum.Font.SourceSans
				Interact_3.Text = ""
				Interact_3.TextColor3 = Color3.fromRGB(0, 0, 0)
				Interact_3.TextScaled = true
				Interact_3.TextSize = 14.000
				Interact_3.TextWrapped = true

				UICorner_9.CornerRadius = UDim.new(0, 5)
				UICorner_9.Parent = Interact_3

				UITextSizeConstraint_6.Parent = Interact_3
				UITextSizeConstraint_6.MaxTextSize = 14

				UIAspectRatioConstraint_31.Parent = Interact_3
				UIAspectRatioConstraint_31.AspectRatio = 5.950

				ButtonDesc.Name = "ButtonDesc"
				ButtonDesc.Parent = Button
				ButtonDesc.AnchorPoint = Vector2.new(0.5, 0.5)
				ButtonDesc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonDesc.BackgroundTransparency = 1.000
				ButtonDesc.BorderSizePixel = 0
				ButtonDesc.Position = UDim2.new(0.485000014, 0, 0.699999988, 0)
				ButtonDesc.Size = UDim2.new(0.886554599, 0, 0.375, 0)
				ButtonDesc.ZIndex = 999999999
				ButtonDesc.Font = Enum.Font.SourceSans
				ButtonDesc.Text = bDesc
				ButtonDesc.TextColor3 = Color3.fromRGB(210, 210, 210)
				ButtonDesc.TextScaled = true
				ButtonDesc.TextSize = 17.000
				ButtonDesc.TextWrapped = true
				ButtonDesc.TextXAlignment = Enum.TextXAlignment.Left

				UITextSizeConstraint_7.Parent = ButtonDesc
				UITextSizeConstraint_7.MaxTextSize = 17

				UIAspectRatioConstraint_32.Parent = ButtonDesc
				UIAspectRatioConstraint_32.AspectRatio = 14.067

				ButtonName.Name = "ButtonName"
				ButtonName.Parent = Button
				ButtonName.AnchorPoint = Vector2.new(0.5, 0.5)
				ButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonName.BackgroundTransparency = 1.000
				ButtonName.BorderSizePixel = 0
				ButtonName.Position = UDim2.new(0.351000011, 0, 0.300000012, 0)
				ButtonName.Size = UDim2.new(0.617647052, 0, 0.375, 0)
				ButtonName.ZIndex = 999999999
				ButtonName.Font = Enum.Font.SourceSansSemibold
				ButtonName.Text = bName
				ButtonName.TextColor3 = Color3.fromRGB(255, 255, 255)
				ButtonName.TextScaled = true
				ButtonName.TextSize = 17.000
				ButtonName.TextWrapped = true
				ButtonName.TextXAlignment = Enum.TextXAlignment.Left

				UITextSizeConstraint_8.Parent = ButtonName
				UITextSizeConstraint_8.MaxTextSize = 17

				UIAspectRatioConstraint_33.Parent = ButtonName
				UIAspectRatioConstraint_33.AspectRatio = 9.800

				UIAspectRatioConstraint_34.Parent = Button
				UIAspectRatioConstraint_34.AspectRatio = 5.950
				
				Interact_3.MouseButton1Click:Connect(function()
					callback()
				end)
				
			end
			
			function Items:CreateToggle(toName, toDefault, callback)
				toName  = toName or "Toggle"
				toDefault = toDefault or false
				local toController = toDefault
				callback = callback or function() end
				
				local Toggle = Instance.new("Frame")
				local UICorner_18 = Instance.new("UICorner")
				local shadowHolder_5 = Instance.new("Frame")
				local umbraShadow_5 = Instance.new("ImageLabel")
				local UIAspectRatioConstraint_53 = Instance.new("UIAspectRatioConstraint")
				local penumbraShadow_5 = Instance.new("ImageLabel")
				local UIAspectRatioConstraint_54 = Instance.new("UIAspectRatioConstraint")
				local ambientShadow_5 = Instance.new("ImageLabel")
				local UIAspectRatioConstraint_55 = Instance.new("UIAspectRatioConstraint")
				local UIAspectRatioConstraint_56 = Instance.new("UIAspectRatioConstraint")
				local ButtonName_4 = Instance.new("TextLabel")
				local UITextSizeConstraint_14 = Instance.new("UITextSizeConstraint")
				local UIAspectRatioConstraint_57 = Instance.new("UIAspectRatioConstraint")
				local Background_3 = Instance.new("Frame")
				local UICorner_19 = Instance.new("UICorner")
				local UIAspectRatioConstraint_58 = Instance.new("UIAspectRatioConstraint")
				local Interact_5 = Instance.new("TextButton")
				local UICorner_20 = Instance.new("UICorner")
				local check = Instance.new("ImageButton")
				local UIAspectRatioConstraint_59 = Instance.new("UIAspectRatioConstraint")
				local UITextSizeConstraint_15 = Instance.new("UITextSizeConstraint")
				local UIAspectRatioConstraint_60 = Instance.new("UIAspectRatioConstraint")
				local UIAspectRatioConstraint_61 = Instance.new("UIAspectRatioConstraint")
				
				Toggle.Name = toName
				Toggle.Parent = Tab
				Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
				Toggle.BackgroundColor3 = Color3.fromRGB(40, 43, 52)
				Toggle.BorderColor3 = Color3.fromRGB(27, 42, 53)
				Toggle.Position = UDim2.new(0.719844341, 0, 0.623093009, 0)
				Toggle.Size = UDim2.new(0.949324548, 0, 0.127771139, 0)
				Toggle.ZIndex = 999999999

				UIStroke_8.Parent = Toggle
				UIStroke_8.Color = Color3.fromRGB(82, 85, 92)
				UIStroke_8.Thickness = 1.5
				UIStroke_8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				UICorner_18.CornerRadius = UDim.new(0, 5)
				UICorner_18.Parent = Toggle

				shadowHolder_5.Name = "shadowHolder"
				shadowHolder_5.Parent = Toggle
				shadowHolder_5.AnchorPoint = Vector2.new(0.5, 0.5)
				shadowHolder_5.BackgroundTransparency = 1.000
				shadowHolder_5.Position = UDim2.new(0.5, 0, 0.5, 0)
				shadowHolder_5.Size = UDim2.new(1.03765702, 0, 1.30861139, 0)

				umbraShadow_5.Name = "umbraShadow"
				umbraShadow_5.Parent = shadowHolder_5
				umbraShadow_5.AnchorPoint = Vector2.new(0.5, 0.5)
				umbraShadow_5.BackgroundTransparency = 1.000
				umbraShadow_5.Position = UDim2.new(0.5, 0, 0.557312667, 0)
				umbraShadow_5.Size = UDim2.new(1.01214755, 0, 1.05731261, 0)
				umbraShadow_5.Image = "rbxassetid://1316045217"
				umbraShadow_5.ImageColor3 = Color3.fromRGB(0, 0, 0)
				umbraShadow_5.ImageTransparency = 0.860
				umbraShadow_5.ScaleType = Enum.ScaleType.Slice
				umbraShadow_5.SliceCenter = Rect.new(10, 10, 118, 118)

				UIAspectRatioConstraint_53.Parent = umbraShadow_5
				UIAspectRatioConstraint_53.AspectRatio = 4.516

				penumbraShadow_5.Name = "penumbraShadow"
				penumbraShadow_5.Parent = shadowHolder_5
				penumbraShadow_5.AnchorPoint = Vector2.new(0.5, 0.5)
				penumbraShadow_5.BackgroundTransparency = 1.000
				penumbraShadow_5.Position = UDim2.new(0.5, 0, 0.557312667, 0)
				penumbraShadow_5.Size = UDim2.new(1.01214755, 0, 1.05731261, 0)
				penumbraShadow_5.Image = "rbxassetid://1316045217"
				penumbraShadow_5.ImageColor3 = Color3.fromRGB(0, 0, 0)
				penumbraShadow_5.ImageTransparency = 0.880
				penumbraShadow_5.ScaleType = Enum.ScaleType.Slice
				penumbraShadow_5.SliceCenter = Rect.new(10, 10, 118, 118)

				UIAspectRatioConstraint_54.Parent = penumbraShadow_5
				UIAspectRatioConstraint_54.AspectRatio = 4.516

				ambientShadow_5.Name = "ambientShadow"
				ambientShadow_5.Parent = shadowHolder_5
				ambientShadow_5.AnchorPoint = Vector2.new(0.5, 0.5)
				ambientShadow_5.BackgroundTransparency = 1.000
				ambientShadow_5.Position = UDim2.new(0.5, 0, 0.557312667, 0)
				ambientShadow_5.Size = UDim2.new(1.01214755, 0, 1.05731261, 0)
				ambientShadow_5.Image = "rbxassetid://1316045217"
				ambientShadow_5.ImageColor3 = Color3.fromRGB(0, 0, 0)
				ambientShadow_5.ImageTransparency = 0.880
				ambientShadow_5.ScaleType = Enum.ScaleType.Slice
				ambientShadow_5.SliceCenter = Rect.new(10, 10, 118, 118)

				UIAspectRatioConstraint_55.Parent = ambientShadow_5
				UIAspectRatioConstraint_55.AspectRatio = 4.516

				UIAspectRatioConstraint_56.Parent = shadowHolder_5
				UIAspectRatioConstraint_56.AspectRatio = 4.718

				ButtonName_4.Name = "ButtonName"
				ButtonName_4.Parent = Toggle
				ButtonName_4.AnchorPoint = Vector2.new(0.5, 0.5)
				ButtonName_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ButtonName_4.BackgroundTransparency = 1.000
				ButtonName_4.BorderSizePixel = 0
				ButtonName_4.Position = UDim2.new(0.350546449, 0, 0.5, 0)
				ButtonName_4.Size = UDim2.new(0.617647052, 0, 0.375, 0)
				ButtonName_4.ZIndex = 999999999
				ButtonName_4.Font = Enum.Font.SourceSansSemibold
				ButtonName_4.Text = toName
				ButtonName_4.TextColor3 = Color3.fromRGB(255, 255, 255)
				ButtonName_4.TextScaled = true
				ButtonName_4.TextSize = 17.000
				ButtonName_4.TextWrapped = true
				ButtonName_4.TextXAlignment = Enum.TextXAlignment.Left

				UITextSizeConstraint_14.Parent = ButtonName_4
				UITextSizeConstraint_14.MaxTextSize = 17

				UIAspectRatioConstraint_57.Parent = ButtonName_4
				UIAspectRatioConstraint_57.AspectRatio = 9.800

				Background_3.Name = "Background"
				Background_3.Parent = Toggle
				Background_3.AnchorPoint = Vector2.new(0.5, 0.5)
				Background_3.BackgroundColor3 = Color3.fromRGB(33, 35, 43)
				Background_3.Position = UDim2.new(0.5, 0, 0.5, 0)
				Background_3.Size = UDim2.new(1, 0, 1, 0)
				Background_3.ZIndex = 99999999

				UICorner_19.CornerRadius = UDim.new(0, 5)
				UICorner_19.Parent = Background_3

				UIAspectRatioConstraint_58.Parent = Background_3
				UIAspectRatioConstraint_58.AspectRatio = 5.950

				Interact_5.Name = "Interact"
				Interact_5.Parent = Toggle
				Interact_5.AnchorPoint = Vector2.new(0.5, 0.5)
				Interact_5.BackgroundColor3 = Color3.fromRGB(40, 43, 52)
				Interact_5.BorderSizePixel = 0
				Interact_5.Position = UDim2.new(0.906000018, 0, 0.5, 0)
				Interact_5.Size = UDim2.new(0.0924369767, 0, 0.550000012, 0)
				Interact_5.ZIndex = 999999999
				Interact_5.AutoButtonColor = false
				Interact_5.Font = Enum.Font.SourceSans
				Interact_5.Text = ""
				Interact_5.TextColor3 = Color3.fromRGB(0, 0, 0)
				Interact_5.TextScaled = true
				Interact_5.TextSize = 14.000
				Interact_5.TextWrapped = true

				UIStroke_9.Parent = Interact_5
				UIStroke_9.Color = Color3.fromRGB(82, 85, 92)
				UIStroke_9.Thickness = 1.5
				UIStroke_9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

				UICorner_20.CornerRadius = UDim.new(0, 5)
				UICorner_20.Parent = Interact_5

				check.Name = "check"
				check.Parent = Interact_5
				check.AnchorPoint = Vector2.new(0.5, 0.5)
				check.BackgroundTransparency = 1.000
				check.Position = UDim2.new(0.5, 0, 0.5, 0)
				check.Size = UDim2.new(0.818181813, 0, 0.818181813, 0)
				check.ZIndex = 2
				check.Image = "rbxassetid://3926305904"
				check.ImageColor3 = Color3.fromRGB(40, 43, 52)
				check.ImageRectOffset = Vector2.new(312, 4)
				check.ImageRectSize = Vector2.new(24, 24)

				UIAspectRatioConstraint_59.Parent = check

				UITextSizeConstraint_15.Parent = Interact_5
				UITextSizeConstraint_15.MaxTextSize = 14

				UIAspectRatioConstraint_60.Parent = Interact_5

				UIAspectRatioConstraint_61.Parent = Toggle
				UIAspectRatioConstraint_61.AspectRatio = 5.950
				
				Interact_5.MouseButton1Click:Connect(function()
					if not toController then
						Rose:Tween(Interact_5, {BackgroundColor3 = Color3.fromRGB(76, 194, 255)}, .2)
						Rose:Tween(UIStroke_9, {Color = Color3.fromRGB(76, 194, 255)}, .2)
					elseif toController then
						Rose:Tween(Interact_5, {BackgroundColor3 = Color3.fromRGB(40, 43, 52)}, .2)
						Rose:Tween(UIStroke_9, {Color = Color3.fromRGB(40, 43, 52)}, .2)
					end
					toController = not toController
					pcall(callback, toController)
				end)
			end
			
			return Items
		end
	end
	return Tabs
end

return Rose
