-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19868.luac 

-- params : ...
-- function num : 0
if peattributes.isdll then
  if not peattributes.hstr_exhaustive and peattributes.dt_error_heur_exit_criteria then
    (pe.set_peattribute)("hstr_exhaustive", true)
    ;
    (pe.reemulate)()
  end
  ;
  (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.AOT!dll")
  return mp.CLEAN
end
;
(mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.AOT")
return mp.CLEAN

