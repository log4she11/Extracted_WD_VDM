-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2179.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
if (string.find)(l_0_0, "%->raw/%d%d%d_s.txt") then
  (mp.set_mpattribute)("SCPT:Nemucod_exclusion")
end
return mp.CLEAN

