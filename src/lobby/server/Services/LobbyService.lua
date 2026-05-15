local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LobbyQueue = require(ReplicatedStorage.LobbyShared.Classes.LobbyQueue)

local LobbyService = {}
LobbyService.__index = LobbyService

function LobbyService.new()
	local self = setmetatable({}, LobbyService)
	self.Queue = LobbyQueue.new()
	return self
end

function LobbyService:Start()
	print("Lobby service ready")
end

return LobbyService
