-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18608.luac 

-- params : ...
-- function num : 0
if (((((hstrlog[1]).matched and not (hstrlog[2]).matched) or (hstrlog[3]).matched) and not (hstrlog[4]).matched) or (mp.getfilesize)() < 600000) and 0 + 1 + 1 + 1 + 1 >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

