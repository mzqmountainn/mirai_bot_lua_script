--origin by Mzq
--20200806
--MZQ chat bot
--用法：chat后面跟上你想要说的话，使用了青云客网络的聊天api
--目前实现不了以@的方式进行聊天，只能先用一个关键词进行代替了23333
Event.subscribe("GroupMessageEvent",function (event)
    local msg = event.message
    local group = event.group
    local msg_str = tostring(msg)
    if string.find(msg_str,'chat') then
        msg_result=Http.get("http://api.qingyunke.com/api.php?key=free&appid=0&msg=" ..msg_str)
        local msg_str_a 
        local msg_str_b
        local msg_str_c
        msg_str_a = string.gsub(msg_result,"{\"result\":0,\"content\":\"",'')
        msg_str_b=string.gsub(msg_str_a,"\"}",'')
        msg_str_c= string.gsub(msg_str_b,"chat",'')
        group:sendMessage( Quote(msg)+msg_str_c)
        end
end)
Event.subscribe("FriendMessageEvent",function(event)
    local msg = event.message
    local friend = event.friend
    local msg_str = tostring(msg)
    if string.find(msg_str,'chat') then
        msg_result=Http.get("http://api.qingyunke.com/api.php?key=free&appid=0&msg=" ..msg_str)
        local msg_str_a 
        local msg_str_b
        local msg_str_c
        msg_str_a = string.gsub(msg_result,"{\"result\":0,\"content\":\"",'')
        msg_str_b=string.gsub(msg_str_a,"\"}",'')
        msg_str_c= string.gsub(msg_str_b,"chat",'')
        friend:sendMessage( Quote(msg)+msg_str_c)
        end     
end)


