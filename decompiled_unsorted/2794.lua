-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2794.luac 

-- params : ...
-- function num : 0
if pehdr.Machine ~= 332 and pehdr.Machine ~= 34404 then
  return mp.CLEAN
end
if pehdr.SectionAlignment >= 4096 then
  return mp.CLEAN
end
local l_0_0 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).RVA
local l_0_1 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).Size
if l_0_0 == 0 or l_0_1 == 0 then
  return mp.CLEAN
end
local l_0_2 = pehdr.AddressOfEntryPoint
local l_0_3 = (pe.foffset_rva)(l_0_2)
if l_0_0 < l_0_3 and l_0_3 < l_0_0 + l_0_1 then
  (mp.set_mpattribute)("Lua:PE:SignedAndSubPageSectionAligned_EPInCert")
end
return mp.INFECTED

