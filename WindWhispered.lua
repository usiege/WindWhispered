-- THIS IS wind-whipered 's area.

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

_G.SLASH_WW1 = "/ww"
_G.SlashCmdList.WW = function()
    print("听风的插件修改库，解决各插件版本问题，加载我即可解决。使用插件时遇到任何问题，关注微信公众号【听风轻咛】，到后台留言遇到的问题，或加小编微信描述。我在听风，也在等你。")
end