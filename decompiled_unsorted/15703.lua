-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15703.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:Trojan:Win32/IsDelphi") and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

