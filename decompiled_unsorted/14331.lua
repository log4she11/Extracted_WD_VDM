-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14331.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.ismsil and l_0_0 < 16384 and l_0_0 > 2000 then
  return mp.INFECTED
end
return mp.CLEAN

