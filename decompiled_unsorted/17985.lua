-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17985.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 491520 and l_0_0 <= 499712 and pehdr.NumberOfSections >= 7 and pehdr.NumberOfSections <= 8 and (mp.get_mpattribute)("NID:Emotet.GU!Pra1") then
  return mp.INFECTED
end
return mp.CLEAN

