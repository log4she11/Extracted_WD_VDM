-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14171.luac 

-- params : ...
-- function num : 0
if peattributes.isdll == true and (pesecs[1]).Name == ".data" then
  return mp.INFECTED
end
return mp.CLEAN

