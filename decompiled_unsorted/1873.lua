-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1873.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 204800 then
  return mp.INFECTED
end
return mp.CLEAN

