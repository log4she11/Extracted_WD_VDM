-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19208.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 3 then
  return mp.INFECTED
end
if peattributes.isdll and (mp.getfilesize)() < 100000 then
  (pe.set_peattribute)("hstr_exhaustive", true)
  ;
  (pe.reemulate)()
end
if mp.HSTR_WEIGHT == 2 then
  return mp.LOWFI
end
return mp.CLEAN

