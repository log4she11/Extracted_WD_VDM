-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/11106.luac 

-- params : ...
-- function num : 0
if (hstrlog[1]).VA < (hstrlog[2]).VA then
  return mp.INFECTED
end
return mp.CLEAN

