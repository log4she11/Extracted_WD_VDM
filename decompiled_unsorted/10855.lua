-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/10855.luac 

-- params : ...
-- function num : 0
if peattributes.isexe == true and peattributes.x86_image == true then
  return mp.INFECTED
end
return mp.CLEAN

