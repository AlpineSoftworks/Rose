local Notification = {}

Notification.Config = {
	Duration = 5,
	DebugNoti = false,
}

function Notification:Custom(args) --// [!] args to be passed: Name, Description, Duration and if Debug.
	
	if Notification.Config.DebugNoti then
		local jsonType = '{Notification Debug}: {\n"Name": "'.. args.Name .. '",\n:"Description": "'.. args.Description .. '"\n}'
	end
	
	--// [?] Custom made notifications, custom icons and etc.
end

function Notification:Send(value)
	--// [?] This is pre-made notifications
end

return Notification
