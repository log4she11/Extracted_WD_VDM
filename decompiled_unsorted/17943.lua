-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17943.luac 

-- params : ...
-- function num : 0
if pehdr.NumberOfSections >= 6 and pehdr.NumberOfSections <= 8 and ((mp.get_mpattribute)("NID:CryptInject.AK!Pra1") or (mp.get_mpattribute)("NID:CryptInject.AK!Pra2")) then
  return mp.INFECTED
end
return mp.CLEAN

