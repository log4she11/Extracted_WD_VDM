-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20717.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC52: Unhandled construct in 'MakeBoolean' P3

if (((((not (hstrlog[1]).matched and not (hstrlog[2]).matched and not (hstrlog[3]).matched and (hstrlog[5]).matched) or not (hstrlog[8]).matched) and (hstrlog[10]).matched) or (hstrlog[4]).matched) and 1 or 0) + ((hstrlog[6]).matched and 1 or 0) + ((hstrlog[9]).matched and 1 or 0) + ((hstrlog[11]).matched and 1 or 0) >= 3 then
  return mp.INFECTED
end
return mp.CLEAN

