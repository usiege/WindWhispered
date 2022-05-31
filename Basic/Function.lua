
-- join default channel
local joinChannelFunc = function(channel)
    if GetLocale() ~= "zhCN" then
        return
    end
    local channelList = DEFAULT_CHAT_FRAME.channelList
    if #channelList < 10 then
        JoinTemporaryChannel(channel)
        local i = 1
        while (channelList[i]) do
            if not channelList[i]:find(channel) then
                i = i + 1
            else
                channelList[i] = channel
                return
            end
        end
        channelList[i] = channel
    end
end

--[[
-- load to join dajiao world channel
joinChannelFunc("大脚世界频道")
-- load to join 163 world channel
joinChannelFunc("有爱世界频道")

-- load to join chat channel tfqn
joinChannelFunc("听风轻咛")
--]]


-- talk update macro 
-- /script talk(1, 5, "内容")
function talk(channel, time_pad, msg)
    T,F=T or 0,F or CreateFrame("frame")
    if TALK then 
        TALK=nil
        ChatFrame3:AddMessage("talk off")
        --SendChatMessage("talk off","channel",nil,channel)
    else 
        TALK=function()
            local t=GetTime()
            if t-T>time_pad then
                SendChatMessage(msg,"channel",nil,channel)
                T=t
            end 
        end
        ChatFrame3:AddMessage("talk on")
        --SendChatMessage("talk on","channel",nil,channel) 
    end 
    F:SetScript("OnUpdate",TALK)
end