-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20.luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 5 then
  return mp.CLEAN
end
if pehdr.SizeOfImage ~= 1953796 then
  return mp.CLEAN
end
if (pesecs[1]).VirtualSize ~= 610304 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 593) ~= 446464 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 597) ~= 618496 then
  return mp.CLEAN
end
if (mp.readu_u32)(headerpage, 621) ~= 3221225536 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(pehdr.AddressOfEntryPoint), 134)
if (mp.crc32)(-1, l_0_0, 1, 134) ~= 178445064 then
  return mp.CLEAN
end
return mp.INFECTED

