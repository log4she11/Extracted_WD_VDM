-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21507.luac 

-- params : ...
-- function num : 0
if peattributes.isdriver ~= true then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 5 then
  return mp.CLEAN
end
if pehdr.SizeOfCode > 1792 then
  return mp.CLEAN
end
if pehdr.SizeOfHeaders > 1792 then
  return mp.CLEAN
end
if pehdr.SizeOfImage > 28672 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[3]).Size ~= 0 then
  return mp.CLEAN
end
if ((pehdr.DataDirectory)[5]).Size ~= 0 then
  return mp.CLEAN
end
if pehdr.Characteristics ~= 270 then
  return mp.CLEAN
end
if pehdr.MajorLinkerVersion < 5 then
  return mp.CLEAN
end
if pehdr.MajorLinkerVersion > 7 then
  return mp.CLEAN
end
if pehdr.MajorLinkerVersion == 6 then
  return mp.CLEAN
end
if pehdr.MajorSubsystemVersion ~= 5 then
  return mp.CLEAN
end
if pehdr.DllCharacteristics ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED

