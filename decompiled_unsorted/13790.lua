-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/13790.luac 

-- params : ...
-- function num : 0
if peattributes.amd64_image and peattributes.ismsil and peattributes.isdll then
  return mp.INFECTED
end
return mp.CLEAN

