-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/11377.luac 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

