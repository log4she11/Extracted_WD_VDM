-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/9218.luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 10000000 then
  return mp.CLEAN
end
return mp.INFECTED

