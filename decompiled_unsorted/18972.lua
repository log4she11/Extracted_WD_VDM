-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18972.luac 

-- params : ...
-- function num : 0
if ((not (hstrlog[1]).matched and not (hstrlog[2]).matched) or (not (hstrlog[3]).matched and not (hstrlog[4]).matched) or not (hstrlog[5]).matched or not (hstrlog[6]).matched or not (hstrlog[7]).matched or (hstrlog[8]).matched) then
  return mp.INFECTED
end
return mp.CLEAN

