-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2214.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:TrojanSpy:Win32/Xtrat!classes") or (mp.get_mpattribute)("HSTR:TrojanSpy:Win32/Xtrat!id") or (mp.get_mpattribute)("HSTR:TrojanSpy:Win32/Xtrat!forms") then
  return mp.INFECTED
end
return mp.CLEAN

