-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14562.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.isvbnative and l_0_0 >= 327680 and l_0_0 <= 524288 then
  return mp.INFECTED
end
return mp.CLEAN

