local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LobbyConstants = require(ReplicatedStorage.LobbyShared.Constants.LobbyConstants)

local LobbyController = {}
LobbyController.__index = LobbyController

function LobbyController.new()
	local self = setmetatable({}, LobbyController)
	return self
end

function LobbyController:Start()
	print(("Lobby controller ready for %d players"):format(LobbyConstants.MaxPlayers))
end

return LobbyController
