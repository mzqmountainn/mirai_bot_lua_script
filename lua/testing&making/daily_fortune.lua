Event.subscribe("GroupMessageEvent",function (event)
	local group = event.group
    local msgg =event.message
    local msggg =tostring(msgg)
    if string.find(msggg,'11') then
        local a =232313
        local msg = Http.get("http://api.qingyunke.com/api.php?key=free&appid=0&msg=" ..a)
        local t = Json.parseJson(msg)
        local status = t["content"]
        group:sendMessage(status)
    end

end)