-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18863.luac 

-- params : ...
-- function num : 0
if (((not (hstrlog[1]).matched or (hstrlog[2]).matched) and not (hstrlog[3]).matched) or 0 + 1 + 1 + 1 == 3) and (hstrlog[1]).VA < (hstrlog[2]).VA and (hstrlog[3]).VA == (hstrlog[2]).VA + 5 + 44 then
  return mp.INFECTED
end
return mp.CLEAN

