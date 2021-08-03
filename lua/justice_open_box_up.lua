--origin by Mzq
--20210803
--正义开盒 用法看代码 
Event.subscribe("GroupMessageEvent",function (event)
    local msg = event.message
	local group = event.group
	local huji 
	local qq 
	if  string.find(tostring(msg),'##') then
	    local msg_str = tostring(msg)
		qq=string.gsub(msg_str,"##",'')
	    group:sendMessage("nmsl!")	
		huji=Http.get("填入开盒api地址，我的就不公开了" ..qq)
	    group:sendMessage(huji)
	end
end)
