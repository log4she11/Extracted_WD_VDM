-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17112.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections == 4 and peattributes.isdll and peattributes.hasexports and peattributes.epinfirstsect then
  return mp.INFECTED
end
return mp.CLEAN

