mouse = game.Players.LocalPlayer:GetMouse() -- getting your players mouse
tool = Instance.new("Tool") -- creating your click to tp tool
tool.RequiresHandle = false --setting it to false so that it doesnt need a mesh 
tool.Name = "Click Teleport" -- obv creates the name of the tool
tool.Activated:connect(function() --when the tool is activated or clicked then the script fires whats inside this function
	pos = mouse.Hit+Vector3.new() -- .Hit is used to to get the tool to fire a projectile from the mouse
	pos = CFrame.new(pos.X,pos.Y,pos.Z) --creates a new CFrame for you to click wherever you desire
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos -- changing your players CFrame position to the position of wherever the mouse is
end)
tool.Parent = game.Players.LocalPlayer.Backpack -- pretty much changes the tools parent to your players backpack in otherwords it just puts the tool you created into your players backpack
