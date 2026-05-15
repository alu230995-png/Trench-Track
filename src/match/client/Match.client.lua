local ReplicatedStorage = game:GetService("ReplicatedStorage")

local GameConfig = require(ReplicatedStorage.TrenchTrackCore.GameConfig)
local MatchController = require(script.Parent.Controllers.MatchController)

print(("%s match client started"):format(GameConfig.ExperienceName))

MatchController.new():Start()
