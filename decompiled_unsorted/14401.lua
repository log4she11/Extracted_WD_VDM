-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14401.luac 

-- params : ...
-- function num : 0
local l_0_0 = 0
if (hstrlog[1]).matched then
  l_0_0 = (hstrlog[1]).hitcount
end
if l_0_0 >= 3 then
  return mp.INFECTED
end
return mp.CLEAN

