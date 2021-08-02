--origin by Mayuri
--fixed by Mzq
--一言：当发送“一言”时，自动发送一句话
--20210802 1527
Event.subscribe("GroupMessageEvent", function(event)
    local msg = event.message
    local group = event.group
    if tostring(msg) == tostring("一言") then 
         group:sendMessage( Quote(msg)+"你要的一言来了:\n"+Http.get("https://api.ixiaowai.cn/ylapi/index.php")) 
    end
end)
Event.subscribe("FriendMessageEvent",function(event)
     local msg = event.message
     local friend = event.friend
     if tostring(msg) ==tostring("一言") then
         friend:sendMessage(Quote(msg)+"你的一言来了：\n"+Http.get("https://api.ixiaowai.cn/ylapi/index.php"))
    end
end     )