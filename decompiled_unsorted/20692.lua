-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20692.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if not l_0_0 then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0)
if not l_0_1 or #l_0_1 <= 10 then
  return mp.CLEAN
end
local l_0_2 = "\\w:\\\\windows\\\\(help|debug|inf|media)\\\\\\w+\\.exe\\s+.*\\w:\\\\windows\\\\(help|debug|inf|media)\\\\\\w+\\.dat\\s+.*\\:\\{[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}\\}"
local l_0_3 = false
l_0_3 = (MpCommon.StringRegExpSearch)(l_0_2, l_0_1)
if l_0_3 then
  return mp.INFECTED
end
return mp.CLEAN

