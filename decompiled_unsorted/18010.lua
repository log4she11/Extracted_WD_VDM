-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18010.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 172032 and l_0_0 <= 176128 and pehdr.NumberOfSections >= 4 and pehdr.NumberOfSections <= 6 and (mp.get_mpattribute)("NID:GandCrab.A!Pra1") then
  return mp.INFECTED
end
return mp.CLEAN

