-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21353.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetBruteMatchData)()
local l_0_1 = l_0_0.match_offset + 9
local l_0_2 = 256
local l_0_3 = ""
local l_0_4 = 0
local l_0_5 = 0
if l_0_0.is_header then
  l_0_3 = (tostring(headerpage)):sub(l_0_1, l_0_1 + l_0_2)
else
  l_0_3 = (tostring(footerpage)):sub(l_0_1, l_0_1 + l_0_2)
end
l_0_3 = (string.gsub)(l_0_3, "%^", "")
l_0_3 = (string.gsub)(l_0_3, "`", "")
l_0_3 = (string.lower)(l_0_3)
if l_0_4 + l_0_5 > 10 and (string.find)(l_0_3, "powershell", 1, true) then
  (mp.set_mpattribute)("SCPT:rtcShellPSObfus.A")
end
if l_0_4 > 20 and (string.find)(l_0_3, "cmd", 1, true) then
  (mp.set_mpattribute)("SCPT:rtcShellCmdObfus.A")
end
return mp.INFECTED

