local ServiceRegistry = {}
ServiceRegistry.__index = ServiceRegistry

function ServiceRegistry.new()
	local self = setmetatable({}, ServiceRegistry)
	self._services = {}
	return self
end

function ServiceRegistry:Register(name, service)
	self._services[name] = service
	return service
end

function ServiceRegistry:Get(name)
	return self._services[name]
end

function ServiceRegistry:Start()
	for _, service in pairs(self._services) do
		if type(service.Start) == "function" then
			service:Start()
		end
	end
end

return ServiceRegistry
