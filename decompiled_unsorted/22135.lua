-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22135.luac 

-- params : ...
-- function num : 0
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.packed == true then
  return mp.CLEAN
end
if peattributes.hasexports ~= true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if pehdr.NumberOfSections < 3 then
  return mp.CLEAN
end
if pehdr.NumberOfSections > 5 then
  return mp.CLEAN
end
if pehdr.SizeOfHeaders ~= 1024 then
  return mp.CLEAN
end
if pehdr.Subsystem ~= 2 then
  return mp.CLEAN
end
if pehdr.DllCharacteristics ~= 512 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[1]).RVA <= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[1]).Size <= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[1]).Size >= 288 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).RVA <= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).Size < 40 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).Size > 60 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[5]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[5]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[10]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[10]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[12]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[12]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[13]).RVA <= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[13]).Size <= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[13]).Size >= 32 then
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
if (mp.readu_u32)(l_0_0, 21) ~= 3 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 25) ~= 3 then
  return mp.CLEAN
end
if (mp.readu_u32)(l_0_0, 29) <= 0 then
  return mp.CLEAN
end
return mp.INFECTED

