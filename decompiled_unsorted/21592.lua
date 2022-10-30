-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21592.luac 

-- params : ...
-- function num : 0
if pehdr.ImageBase ~= 320077824 then
  return mp.CLEAN
end
if pehdr.NumberOfSections ~= 3 then
  return mp.CLEAN
end
if peattributes.isexe ~= true then
  return mp.CLEAN
end
if peattributes.packed == true then
  return mp.CLEAN
end
if (pesecs[1]).VirtualSize < 32768 then
  return mp.CLEAN
end
if (pesecs[1]).VirtualSize > 36864 then
  return mp.CLEAN
end
if (pesecs[1]).SizeOfRawData ~= 0 then
  return mp.CLEAN
end
if pehdr.NumberOfSections < pevars.epsec then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).VirtualSize < 12288 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).VirtualSize > 16384 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData < 12032 then
  return mp.CLEAN
end
if (pesecs[pevars.epsec]).SizeOfRawData > 13824 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).VirtualSize < 2304 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData ~= 0 then
  return mp.CLEAN
end
return mp.INFECTED

