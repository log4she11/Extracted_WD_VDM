-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12349.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("Sigattr:TrojanSpy:Win32/Banker.gen!E.1") then
  return mp.INFECTED
end
return mp.CLEAN

