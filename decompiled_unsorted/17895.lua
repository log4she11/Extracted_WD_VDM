-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17895.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
else
  if mp.HSTR_WEIGHT == 2 then
    return mp.LOWFI
  end
end
if (hstrlog[3]).matched then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
return mp.CLEAN

