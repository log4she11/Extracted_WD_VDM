-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17815.luac 

-- params : ...
-- function num : 0
if (mp.crc32)(-1, epcode, 1, 9) == 2556408724 and pevars.epsec == pehdr.NumberOfSections then
  return mp.INFECTED
else
  return mp.LOWFI
end
return mp.CLEAN

