-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2618.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0:find("42078", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("kali", 1, true) then
  return mp.CLEAN
end
if #(mp.enum_mpattributesubstring)("SCPT:CodeOnly.AriffraffJs") >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

