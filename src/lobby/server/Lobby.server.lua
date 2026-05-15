local ReplicatedStorage = game:GetService("ReplicatedStorage")

local GameConfig = require(ReplicatedStorage.TrenchTrackCore.GameConfig)
local LobbyService = require(script.Parent.Services.LobbyService)

print(("%s lobby server started"):format(GameConfig.ExperienceName))

LobbyService.new():Start()
