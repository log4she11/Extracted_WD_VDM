-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2430.luac 

-- params : ...
-- function num : 0
if pehdr.DllCharacteristics ~= 0 then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[4]).RVA ~= 0 or ((pehdr.DataDirectory)[4]).Size ~= 0 then
  return mp.CLEAN
end
if pehdr.Machine ~= 332 then
  return mp.CLEAN
end
return mp.INFECTED

