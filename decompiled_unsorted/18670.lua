-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18670.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security == true and l_0_0 >= 114688 and l_0_0 <= 159744 and pehdr.NumberOfSections == 9 and (pesecs[6]).Name == "CONST" then
  return mp.INFECTED
end
return mp.CLEAN

