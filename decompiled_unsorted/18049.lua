-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18049.luac 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.amd64_image and (mp.getfilesize)() < 371200 then
  (pe.set_peattribute)("hstr_exhaustive", true)
  ;
  (pe.reemulate)()
  return mp.INFECTED
end
return mp.CLEAN

