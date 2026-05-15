local ReplicatedStorage = game:GetService("ReplicatedStorage")

local TeamState = require(ReplicatedStorage.MatchShared.Classes.TeamState)

local MatchService = {}
MatchService.__index = MatchService

function MatchService.new()
	local self = setmetatable({}, MatchService)
	self.TeamState = TeamState.new()
	return self
end

function MatchService:Start()
	print("Match service ready")
end

return MatchService
