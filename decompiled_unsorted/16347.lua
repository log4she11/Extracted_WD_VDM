-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16347.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 140000 and l_0_0 <= 146000 and pehdr.NumberOfSections >= 6 and pehdr.NumberOfSections <= 7 then
  return mp.INFECTED
end
return mp.CLEAN

