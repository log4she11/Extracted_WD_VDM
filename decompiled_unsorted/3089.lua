-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3089.luac 

-- params : ...
-- function num : 0
if peattributes.is_delphi then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).Name == ".rsrc" then
  return mp.CLEAN
end
if (pesecs[pehdr.NumberOfSections]).Name == ".reloc" then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 4194304 and peattributes.epscn_writable and peattributes.lastscn_writable and ((mp.get_mpattributesubstring)("Win32/AutoIt") or (mp.get_mpattributesubstring)("PESTATIC:cleanstub_autoitv")) then
  local l_0_1 = (pesecs[pehdr.NumberOfSections]).PointerToRawData
  ;
  (mp.readprotection)(false)
  local l_0_2 = (mp.readfile)(l_0_1, 64)
  local l_0_3 = (mp.crc32)(-1, l_0_2, 1, 64)
  if l_0_3 == 2322767049 then
    (mp.set_mpattribute)("AutoItIgnoreMaxSizes")
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

