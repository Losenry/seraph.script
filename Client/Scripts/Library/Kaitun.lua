local Init = {}
if game.CoreGui:FindFirstChild('Serenity') then
	game.CoreGui:FindFirstChild('Serenity'):Destroy()
end

function Init:Create(...)
    local args = {...};
	local Gui = Instance.new("ScreenGui")
	local BlackFrame = Instance.new("Frame")
	local Icon = Instance.new("ImageButton")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIGridLayout = Instance.new("UIGridLayout")
	local Title = Instance.new("TextLabel")
    local Icon_Toggle = Instance.new("ImageButton")

	Gui.Name = "Serenity"
	Gui.Parent = game.CoreGui
	Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Gui.IgnoreGuiInset = true
    Gui.DisplayOrder = 999

	BlackFrame.Name = "BlackFrame"
	BlackFrame.Parent = Gui
	BlackFrame.BackgroundColor3 = Color3.new(0, 0, 0)
	BlackFrame.BorderColor3 = Color3.new(0, 0, 0)
	BlackFrame.BorderSizePixel = 0
	BlackFrame.Size = UDim2.new(1, 100, 1, 100)
	BlackFrame.BackgroundTransparency = 0

	Title.Name = "Title"
	Title.Parent = BlackFrame
	Title.BackgroundColor3 = Color3.new(1, 1, 1)
	Title.BackgroundTransparency = 1
	Title.BorderColor3 = Color3.new(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0.336795241, 0, 0.0264900662, 0)
	Title.Size = UDim2.new(0.252225518, 0, 0.0750551894, 0)
	Title.Font = Enum.Font.FredokaOne
	Title.Text = args[1]
	Title.TextColor3 = Color3.new(1, 1, 1)
	Title.TextSize = 40
	Title.TextStrokeColor3 = Color3.new(0.886275, 0.886275, 0.886275)
	Title.TextStrokeTransparency = 0.800000011920929

	Icon_Toggle.Name = "Icon"
	Icon_Toggle.Parent = Gui
	Icon_Toggle.BackgroundColor3 = Color3.new(0, 0, 0)
	Icon_Toggle.BackgroundTransparency = 1
	Icon_Toggle.BorderColor3 = Color3.new(0, 0, 0)
	Icon_Toggle.BorderSizePixel = 0
	Icon_Toggle.Position = UDim2.new(0.0115532735, 0, 0.0165562909, 0)
	Icon_Toggle.Size = UDim2.new(0.0641848519, 0, 0.110375278, 0)
	Icon_Toggle.Image = "http://www.roblox.com/asset/?id=".. args[3]
	Icon_Toggle.Active = true

	Icon.Name = "Icon"
	Icon.Parent = Gui
	Icon.BackgroundColor3 = Color3.new(0, 0, 0)
	Icon.BackgroundTransparency = 1
	Icon.BorderColor3 = Color3.new(0, 0, 0)
	Icon.BorderSizePixel = 0
    Icon.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon.Size = UDim2.new(0.5, 0, 0.5, 0)
	Icon.Image = "http://www.roblox.com/asset/?id=".. args[2]
    Icon.ImageTransparency = 0.75
	Icon.Active = true

	UIAspectRatioConstraint.Parent = Icon_Toggle

	ScrollingFrame.Parent = BlackFrame
	ScrollingFrame.Active = true
	ScrollingFrame.BackgroundColor3 = Color3.new(0.345098, 0.345098, 0.345098)
	ScrollingFrame.BackgroundTransparency = 1
	ScrollingFrame.BorderColor3 = Color3.new(0, 0, 0)
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0.230110332, 0, 0.111479029, 0)
	ScrollingFrame.Size = UDim2.new(0.464391679, 0, 0.733995557, 0)
	ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

	UIGridLayout.Parent = ScrollingFrame
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellSize = UDim2.new(1, 0, 0.109999999, 0)
	local Temp = {}

	function Temp:Add(...)
        local LabelFunc = {}
		local TextLabel = Instance.new("TextLabel")
		TextLabel.Parent = ScrollingFrame
		TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
		TextLabel.BackgroundTransparency = 1
		TextLabel.BorderColor3 = Color3.new(0, 0, 0)
		TextLabel.BorderSizePixel = 0
		TextLabel.Position = UDim2.new(0.00159744406, 0, 0, 0)
		TextLabel.Size = UDim2.new(0, 123, 0, 100)
		TextLabel.Font = Enum.Font.FredokaOne
		TextLabel.Text = tostring(...)  
		TextLabel.TextColor3 = Color3.new(1, 1, 1)
        TextLabel.TextTransparency = 0.15
		TextLabel.TextScaled = true
        TextLabel.RichText = true
		TextLabel.TextSize = 15
		TextLabel.TextStrokeTransparency = 11
		TextLabel.TextWrapped = true

        LabelFunc.Refresh = function(...)
            LabelFunc.Text = ...
        end

        LabelFunc.Options = function(...)
            return LabelFunc
        end
        return LabelFunc
	end

	function Temp:ToggleUI()
        game:GetService('RunService'):Set3dRenderingEnabled(BlackFrame.Visible)
        game:GetService('RunService'):setThrottleFramerateEnabled(BlackFrame.Visible)
		BlackFrame.Visible = not BlackFrame.Visible
        Icon.Visible = BlackFrame.Visible
	end

	Icon_Toggle.MouseButton1Click:Connect(function()
		Temp:ToggleUI()
	end)
	return Temp
end
return Init
