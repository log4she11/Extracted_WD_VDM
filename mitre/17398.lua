-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17398.luac 

-- params : ...
-- function num : 0
if peattributes.no_security == false and (mp.get_mpattribute)("LUA:FileSizeGT1M.A") and (mp.get_mpattribute)("TEL:Trojan:Win32/FlawedAmmyy!fa1") then
  return mp.INFECTED
end
return mp.CLEAN

