-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21162.luac 

-- params : ...
-- function num : 0
if not peattributes.isexe or peattributes.packed or not peattributes.no_exception or not peattributes.no_exports or not peattributes.no_security or not peattributes.x86_image then
  return mp.CLEAN
end
local l_0_0 = pevars.sigaddr
local l_0_1 = (pe.vm_search)(l_0_0, l_0_0 + 256, "`\156", nil, pe.VM_SEARCH_FOP)
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = (pe.vm_search)(l_0_1, l_0_1 + 256, "\185", nil, pe.VM_SEARCH_FOP)
if l_0_2 == nil then
  return mp.CLEAN
end
l_0_2 = (pe.vm_search)(l_0_2, l_0_2 + 256, "\226", nil, pe.VM_SEARCH_FOP)
if l_0_2 == nil then
  return mp.CLEAN
end
;
(mp.set_mpattributeex)("Lua:fopex_shellter_trick", l_0_1)
return mp.INFECTED

