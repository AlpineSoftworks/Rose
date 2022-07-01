--// [?] Used this Module to make UI detection harder.

local RandomStr = function()
	local min_max = math.random(5,35)
	local holder = {}
	for str = 1, min_max do
		holder[str] = string.char(math.random(35,130))
	end
	return table.concat(holder)
end

return RandomStr
