-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/13293.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT == 2 and (hstrlog[2]).hitcount > 30 then
  return mp.INFECTED
end
return mp.CLEAN

