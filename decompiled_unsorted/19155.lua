-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19155.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 273152 and (mp.getfilesize)() > 112640 and peattributes.isdll and peattributes.hasexports then
  if peattributes.dt_error_heur_exit_criteria then
    (pe.set_peattribute)("deep_analysis", true)
  end
  ;
  (pe.reemulate)()
end
return mp.INFECTED

