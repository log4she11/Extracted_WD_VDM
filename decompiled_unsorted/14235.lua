-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14235.luac 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.hasexports then
  (mp.set_mpattribute)("ChangeEPtoExport")
end
return mp.CLEAN

