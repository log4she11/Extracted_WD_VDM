-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16493.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
if (hstrlog[6]).matched or (hstrlog[7]).matched then
  return mp.LOWFI
end
return mp.CLEAN

