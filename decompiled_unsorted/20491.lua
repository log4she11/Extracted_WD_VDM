-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20491.luac 

-- params : ...
-- function num : 0
if ((((((((((((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (hstrlog[5]).matched) and not (hstrlog[1]).matched) or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or (hstrlog[4]).matched) and not (hstrlog[5]).matched) or (mp.getfilesize)() < 400000) and 0 + 1 + 1 + 1 + 1 + 1 == 5) or 0 + 1 + 1 + 1 + 1 + 1 == 5 then
  return mp.INFECTED
end
return mp.CLEAN

