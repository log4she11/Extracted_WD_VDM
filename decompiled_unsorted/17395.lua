-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17395.luac 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.hasexports and peattributes.packersigmatched then
  (pe.set_peattribute)("deep_analysis", true)
  ;
  (pe.reemulate)()
end
return mp.CLEAN

