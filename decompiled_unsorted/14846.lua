-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14846.luac 

-- params : ...
-- function num : 0
if peattributes.isdll and (mp.getfilesize)() > 2500000 and (mp.getfilesize)() < 3500000 then
  return mp.INFECTED
end
return mp.CLEAN

