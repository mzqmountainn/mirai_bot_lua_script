Event.subscribe("GroupMessageEvent",function (event)
    local msg = event.message
	local group = event.group
	local sender = event.sender
	local msgg = tostring(msg)
	local a = "111"
	if  string.find(msgg,a) then	    
	    group:sendMessage("nmsl")	
	end
end)