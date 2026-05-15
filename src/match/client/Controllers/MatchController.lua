local ReplicatedStorage = game:GetService("ReplicatedStorage")

local MatchConstants = require(ReplicatedStorage.MatchShared.Constants.MatchConstants)

local MatchController = {}
MatchController.__index = MatchController

function MatchController.new()
	local self = setmetatable({}, MatchController)
	return self
end

function MatchController:Start()
	print(("Match controller ready for %d teams"):format(MatchConstants.TeamCount))
end

return MatchController
