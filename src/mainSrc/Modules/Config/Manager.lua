local Manager = {}


Manager.ConfigFile = function(source, file, directory)
	if directory ~= "" then
		writefile(directory .. "\\" .. file .. ".json", source)
	elseif directory == "" then
		writefile(file, source)
	end
	
end

Manager.EditFile = function(source, file)
	appendfile(file, source)
end

Manager.CreateFolder = makefolder

Manager.MoveFile = function(file, directory)
	if isfile(file) then
		local contents = readfile(file)
		delfile(file)
		
		if directory ~= "" then
			writefile(directory .. '\\' .. file, contents)
		elseif directory == "" then
			writefile(file, contents)
		end
	end
end

--[[
	Name: Config\\Manager.lua
	Description: Manages the files from workspace.
	
	Examples: {(
		local jsoncode = "yes"
		local newJsonCode = "no"
		Manager.ConfigFolder('test')
		Manager.ConfigFile(jsonCode, 'Config', 'Rose')
		Manager.MoveFile('Config', '') => Leaving it empty means leave it on workspace.
		Manager.MoveFile('test\\Config', 'notTest') => \\ means indexing a folder
		Manager.EditFile(newJsonCode, 'Config')
	)}
]]

return Manager
