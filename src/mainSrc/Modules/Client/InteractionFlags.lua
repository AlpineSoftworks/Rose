local Flags = {}

function Flags:NewConfig(file, debugCode, ...)
	local CONFIG = {}

	local CODE = ...

	function CONFIG:Encode(source)
		local newCode = game:GetService("HttpService"):JSONEncode(source)

		if debugCode then
			print('Encoded File => ', newCode)
		end

		return newCode
	end

	local new = CONFIG:Encode(CODE)

	return new
end

function Flags:Decode(source, debugCode)
	local newCode = game:GetService("HttpService"):JSONDecode(source)

	if debugCode then
		print('Sucessfully Decoded File.')
	end

	return newCode
end

--[[
	Name: Client\\InteractionFlags
	Description: Stores every interaction as a config from the UI lib.
	
	Examples: {(
		local Flags = require(path_to_flags)
		local newConfig = Flags:NewConfig('Name of Config', false, {code = "wow", bruh = true, halal = true})
		local DecodeConfig = Flags:Decode(newConfig)
	)}
]]



return Flags