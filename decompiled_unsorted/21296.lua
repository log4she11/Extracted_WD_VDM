-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21296.luac 

-- params : ...
-- function num : 0
if peattributes.isvbpcode ~= true and peattributes.isvbnative ~= true then
  return mp.CLEAN
end
if peattributes.isdll == true then
  return mp.CLEAN
end
if (mp.getfilesize)() > 1048576 then
  return mp.CLEAN
end
if (hstrlog[1]).hitcount > 40 then
  return mp.CLEAN
end
local l_0_0 = (pesecs[pehdr.NumberOfSections]).PointerToRawData + (pesecs[pehdr.NumberOfSections]).SizeOfRawData
local l_0_1 = (pe.foffset_va)(pehdr.ImageBase + (pehdr.SizeOfImage - 1)) + 1
if l_0_0 ~= l_0_1 then
  l_0_0 = l_0_1
end
if (pesecs[1]).SizeOfRawData > 61440 then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).SizeOfRawData < 65536 and (mp.getfilesize)() - l_0_0 < 65536 then
  return mp.CLEAN
end
return mp.INFECTED

