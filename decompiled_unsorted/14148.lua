-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14148.luac 

-- params : ...
-- function num : 0
if (pesecs[1]).Name == "UPX0" and (pesecs[1]).SizeOfRawData == 0 then
  return mp.INFECTED
end
return mp.CLEAN

