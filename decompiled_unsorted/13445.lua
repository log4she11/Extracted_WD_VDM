-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/13445.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 9 then
  (mp.set_mpattribute)("PUA:Block:Umpay.B")
  return mp.INFECTED
end
return mp.LOWFI

