local LobbyQueue = {}
LobbyQueue.__index = LobbyQueue

function LobbyQueue.new()
	local self = setmetatable({}, LobbyQueue)
	self.Players = {}
	return self
end

function LobbyQueue:AddPlayer(player)
	self.Players[player.UserId] = player
end

function LobbyQueue:RemovePlayer(player)
	self.Players[player.UserId] = nil
end

return LobbyQueue
