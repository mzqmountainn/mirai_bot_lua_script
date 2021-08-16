Event.subscribe("GroupMessageEvent",function (event)
    local msg = event.message
	local group = event.group
	local msgg = tostring(msg)
	if string.find(msgg,'!ban') then	
	    local a
		a =string.gsub(msgg,"!ban",'')
		qq = tonumber(a)

		qq:kick("nmsl")
	end
end)