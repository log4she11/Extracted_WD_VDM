-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/8629.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 120000 then
  return mp.SUSPICIOUS
end
return mp.CLEAN

