-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17372.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 5 and not (hstrlog[7]).matched then
  return mp.INFECTED
end
;
(mp.set_mpattribute)("HSTR:TrojanProxy:Win32/Banker.BD")
return mp.LOWFI

