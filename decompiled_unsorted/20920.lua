-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20920.luac 

-- params : ...
-- function num : 0
if (((((((((not (hstrlog[2]).matched or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (hstrlog[5]).matched) and not (hstrlog[6]).matched) or (hstrlog[7]).matched) and not (hstrlog[8]).matched) or (hstrlog[9]).matched) and (hstrlog[1]).VA ~= 0 + pehdr.ImageBase + 13) or 0 + 1 + 1 + 1 ~= 3 or (0 + 1 + 1 + 1 ~= 3 and 0 + 1 + 1 ~= 2) or (mp.getfilesize)() < 20000) then
  return mp.INFECTED
end
return mp.CLEAN

