-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16193.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if peattributes.no_security and peattributes.ismsil == true and l_0_0 > 524288 and l_0_0 < 851968 then
  return mp.INFECTED
end
return mp.CLEAN

