-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16511.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if (l_0_0 >= 315392 and l_0_0 <= 327680) or l_0_0 >= 405504 and l_0_0 <= 466944 then
  return mp.INFECTED
end
return mp.CLEAN

