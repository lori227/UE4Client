local ipairs = ipairs
local setmetatable = setmetatable

function class(clsname, ...)
	local cls = {_class_name = clsname}

	local args = {...}
	if #args > 0 then
		setmetatable(cls, {__index=
		function(_, k)
			for i, v in ipairs(args) do
				local ret = v[k]
				if ret ~= nil then
					return ret
				end
			end
		end})
	end

	cls.new = function(...)
		local self = setmetatable({classtype=cls}, {__index=cls})

		if cls.ctor then
			cls.ctor(self, ...)
		end

		return self
	end

	return cls
end

