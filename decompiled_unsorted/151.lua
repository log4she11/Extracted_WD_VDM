-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/151.luac 

-- params : ...
-- function num : 0
if not this_sigattrlog[2] or not (this_sigattrlog[2]).matched or not (this_sigattrlog[2]).utf8p1 then
  return mp.CLEAN
end
local l_0_0 = (this_sigattrlog[2]).utf8p1
if (sysio.IsFileExists)(l_0_0) and not (mp.IsKnownFriendlyFile)(l_0_0, true, false) then
  return mp.INFECTED
end
return mp.CLEAN

