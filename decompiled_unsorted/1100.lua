-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1100.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("WPADExploitAttempt.detected.P1") then
  return mp.CLEAN
end
local l_0_0, l_0_1 = nil, nil
l_0_1 = (string.lower)((string.sub)((this_sigattrlog[3]).utf8p1, -12))
if l_0_1 == nil or (string.find)(l_0_1, "^%%", 0) then
  return mp.CLEAN
end
l_0_0 = (this_sigattrlog[3]).utf8p1
l_0_0 = (MpCommon.PathToWin32Path)(l_0_0)
if (sysio.IsFileExists)(l_0_0) then
  (bm.add_related_file)(l_0_0)
end
return mp.INFECTED

