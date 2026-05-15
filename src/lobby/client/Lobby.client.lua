local ReplicatedStorage = game:GetService("ReplicatedStorage")

local GameConfig = require(ReplicatedStorage.TrenchTrackCore.GameConfig)
local LobbyController = require(script.Parent.Controllers.LobbyController)

print(("%s lobby client started"):format(GameConfig.ExperienceName))

LobbyController.new():Start()
