-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16397.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 9728 and l_0_0 <= 13312 and (hstrlog[1]).matched and (hstrlog[2]).matched then
  return mp.INFECTED
end
return mp.CLEAN

