-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18953.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 101 then
  return mp.INFECTED
end
if (hstrlog[1]).matched or (hstrlog[2]).matched then
  (mp.set_mpattribute)("do_exhaustivehstr_rescan")
end
if (hstrlog[1]).matched and (hstrlog[2]).matched then
  return mp.CLEAN
end
return mp.LOWFI

