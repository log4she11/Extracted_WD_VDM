-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16991.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:Win32/DelphiFile") and peattributes.isexe == true and (mp.getfilesize)() < 2064000 then
  return mp.INFECTED
end
return mp.CLEAN

