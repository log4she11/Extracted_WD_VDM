-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15877.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 4 then
  if (hstrlog[4]).matched then
    (mp.changedetectionname)(805306381)
  end
  return mp.INFECTED
end
return mp.CLEAN

