-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14747.luac 

-- params : ...
-- function num : 0
if peattributes.isexe and (mp.get_mpattribute)("HSTR:Win32/DelphiFile") then
  return mp.INFECTED
end
return mp.CLEAN

