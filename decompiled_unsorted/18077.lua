-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18077.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 12 and peattributes.ismsil then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT < 12 and peattributes.ismsil then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
  ;
  (pe.reemulate)()
end
return mp.LOWFI

