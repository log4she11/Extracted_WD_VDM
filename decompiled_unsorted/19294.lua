-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19294.luac 

-- params : ...
-- function num : 0
if (((((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (mp.getfilesize)() < 3000000) and ((hstrlog[5]).matched or 0 + 1 + 1 + 1 + 1 + 1 >= 3) then
  return mp.INFECTED
end
return mp.CLEAN

