-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21577.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT > 10 then
  return mp.INFECTED
end
if pehdr.Magic ~= 267 then
  return mp.CLEAN
end
local l_0_0 = ((pehdr.DataDirectory)[1]).RVA
local l_0_1 = ((pehdr.DataDirectory)[1]).Size
l_0_0 = (pe.foffset_rva)(l_0_0)
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)(l_0_0, l_0_1)
local l_0_3 = (mp.ror32)((mp.readu_u32)(l_0_2, 20), 8)
if l_0_3 ~= 1 then
  return mp.CLEAN
end
local l_0_4 = (mp.ror32)((mp.readu_u32)(l_0_2, 40), 8)
local l_0_5 = (mp.readfile)(0, (mp.getfilesize)())
local l_0_6 = (mp.ror32)((mp.readu_u32)(l_0_5, 60), 8)
local l_0_7 = (mp.ror32)((mp.readu_u32)(l_0_5, l_0_6 + 40), 8)
if l_0_7 == l_0_4 then
  return mp.CLEAN
end
;
(mp.writeu_u32)(l_0_5, l_0_6 + 40 + 1, l_0_4)
;
(mp.vfo_add_buffer)(l_0_5, "Export_OEP", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN

