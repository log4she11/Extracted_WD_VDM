-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21041.luac 

-- params : ...
-- function num : 0
local l_0_0 = false
local l_0_1 = (mp.GetBruteMatchData)()
local l_0_2 = l_0_1.match_offset + 1
local l_0_3 = l_0_1.match_offset + 1 + 512
local l_0_4 = ((tostring(l_0_1.is_header and headerpage or footerpage)):sub(l_0_2, l_0_3)):lower()
if not l_0_4 then
  return mp.CLEAN
end
local l_0_5 = (mp.GetExecutablesFromCommandLine)(l_0_4)
for l_0_9,l_0_10 in ipairs(l_0_5) do
  if (sysio.IsFileExists)(l_0_10) and not (mp.IsKnownFriendlyFile)(l_0_10, false, false) then
    (mp.ReportLowfi)(l_0_10, 3071065115)
    l_0_0 = true
  end
end
if l_0_0 then
  return mp.INFECTED
end
return mp.CLEAN

