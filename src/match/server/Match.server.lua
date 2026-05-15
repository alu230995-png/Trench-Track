local ReplicatedStorage = game:GetService("ReplicatedStorage")

local GameConfig = require(ReplicatedStorage.TrenchTrackCore.GameConfig)
local MatchService = require(script.Parent.Services.MatchService)

print(("%s match server started"):format(GameConfig.ExperienceName))

MatchService.new():Start()
