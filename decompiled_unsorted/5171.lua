-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/5171.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 229376 then
  return mp.INFECTED
end
return mp.CLEAN

