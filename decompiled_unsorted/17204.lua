-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17204.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and pehdr.NumberOfSections == 5 and l_0_0 >= 1785856 and l_0_0 <= 1802240 then
  return mp.INFECTED
end
return mp.CLEAN

