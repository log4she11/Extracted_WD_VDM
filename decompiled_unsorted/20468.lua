-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20468.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 4 then
  return mp.INFECTED
end
if not (mp.get_mpattribute)("pea_enable_vmm_grow") or not (mp.get_mpattribute)("do_exhaustivehstr_rescan") or not (mp.get_mpattribute)("pea_deep_analysis") then
  (pe.set_peattribute)("enable_vmm_grow", true)
  ;
  (pe.set_peattribute)("deep_analysis", true)
  ;
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  ;
  (pe.reemulate)()
end
return mp.LOWFI

