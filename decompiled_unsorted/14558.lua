-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14558.luac 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and (hstrlog[4]).hitcount >= 50 then
  return mp.INFECTED
end
return mp.CLEAN

