-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19181.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if (mp.get_mpattribute)("NID:PossibleParadiseSh") and peattributes.no_security == true and l_0_0 <= 8704 and l_0_0 >= 7680 and peattributes.isdll == false and pehdr.NumberOfSections == 4 then
  return mp.INFECTED
end
return mp.CLEAN

