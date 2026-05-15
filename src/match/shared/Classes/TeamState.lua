local TeamState = {}
TeamState.__index = TeamState

function TeamState.new()
	local self = setmetatable({}, TeamState)
	self.Teams = {}
	return self
end

function TeamState:SetTeam(teamId, data)
	self.Teams[teamId] = data
end

function TeamState:GetTeam(teamId)
	return self.Teams[teamId]
end

return TeamState
