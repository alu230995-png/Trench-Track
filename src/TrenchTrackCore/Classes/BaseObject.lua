local BaseObject = {}
BaseObject.__index = BaseObject

function BaseObject.new()
	local self = setmetatable({}, BaseObject)
	self._destroyed = false
	return self
end

function BaseObject:IsDestroyed()
	return self._destroyed
end

function BaseObject:Destroy()
	self._destroyed = true
end

return BaseObject
