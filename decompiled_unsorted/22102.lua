-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22102.luac 

-- params : ...
-- function num : 0
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if epcode[1] ~= 131 then
  return mp.CLEAN
end
if epcode[6] ~= 117 then
  return mp.CLEAN
end
if epcode[8] ~= 232 then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if pehdr.ImageBase ~= 268435456 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData <= 65536 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData >= 327680 then
  return mp.CLEAN
end
if peattributes.hasexports ~= true then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[1]).Size <= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[1]).Size >= 256 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[6]).Size >= 12288 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[6]).Size <= 4096 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[11]).RVA == 0 then
  return mp.CLEAN
end
;
(mp.readprotection)(false)
local l_0_0 = (mp.readfile)((pe.foffset_rva)(((pehdr.DataDirectory)[1]).RVA), 32)
if (mp.readu_u32)(l_0_0, 1) ~= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 5) <= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 9) ~= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 13) <= 0 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 17) ~= 1 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 21) ~= 4 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 25) ~= 4 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 29) <= 0 then
  return mp.CLEAN
end
local l_0_1 = (mp.readfile)((pe.foffset_rva)((mp.readu_u32)(l_0_0, 13)), 11)
if (mp.crc32)(-1, l_0_1, 1, 11) ~= 3888332938 then
  return mp.CLEAN
end
return mp.INFECTED

