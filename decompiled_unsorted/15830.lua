-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15830.luac 

-- params : ...
-- function num : 0
if peattributes.isexe and peattributes.no_security and #(pe.get_exports)() == 1 then
  return mp.INFECTED
end
return mp.CLEAN

