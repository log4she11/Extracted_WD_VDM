-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18918.luac 

-- params : ...
-- function num : 0
if peattributes.isexe and peattributes.hasstandardentry and pehdr.NumberOfSections >= 5 and (pesecs[4]).Name == ".rsrc" and (pesecs[4]).SizeOfRawData >= 86016 then
  return mp.INFECTED
end
return mp.SUSPICIOUS

