-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21449.luac 

-- params : ...
-- function num : 0
if peattributes.epinfirstsect ~= true then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.hasstandardentry == true then
  return mp.CLEAN
end
if peattributes.epscn_writable ~= false then
  return mp.CLEAN
end
if peattributes.packed ~= false then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[1]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[2]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).RVA ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[6]).RVA ~= 0 then
  return mp.CLEAN
end
if peattributes.hasexports ~= false then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).NameDW ~= 2019914798 then
  return mp.CLEAN
end
return mp.INFECTED

