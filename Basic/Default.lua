-- this script load some default settings
local _, ns = ...
local B, C, L, DB = unpack(ns)

-- slash standardization

-- tf's slash
_G.SLASH_WW1 = "/w"
_G.SlashCmdList.WW = function(msg)
    DEFAULT_CHAT_FRAME:AddMessage(L["SlashWMessage"])
    if msg == "help" then
        print()
    end
end



-- ndui basic control panel
-- _G.SLASH_NDUI1 = "/n"
-- _G.SlashCmdList.NDUI = function()
--     --
-- end
   