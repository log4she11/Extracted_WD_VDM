-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2930.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("SCPT:Worm:VBS/Jenxcus!Crypt48") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 200000 or l_0_0 > 30000000 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_1 = (mp.readfile)(0, l_0_0)
l_0_1 = (string.lower)(l_0_1)
local l_0_2 = (string.match)(l_0_1, "%w-%s-=%s-\"(%d%d%d?[^%d]+%d%d%d?[^%d]+%d%d%d?[^%d]+.-)\"%s-execute")
if l_0_2 == nil then
  return mp.CLEAN
end
;
(mp.vfo_add_buffer)(fastDec2Bin(l_0_2, "(%d+)[^%d]+"), "[Crypt48]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

