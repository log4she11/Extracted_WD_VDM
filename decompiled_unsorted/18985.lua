-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18985.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("pea_enable_vmm_grow") or not (mp.get_mpattribute)("pea_hstr_exhaustive") then
  (pe.set_peattribute)("enable_vmm_grow", true)
  ;
  (pe.set_peattribute)("hstr_exhaustive", true)
  ;
  (pe.reemulate)()
else
  return mp.INFECTED
end
return mp.CLEAN

