-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4714.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 350000 then
  return mp.LOWFI
end
return mp.CLEAN

