-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15896.luac 

-- params : ...
-- function num : 0
if pehdr.AddressOfEntryPoint == 34224 and pehdr.Magic == 523 and pehdr.SizeOfImage == 1249280 then
  return mp.INFECTED
end
return mp.CLEAN

