-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15732.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 15 then
  return mp.INFECTED
else
  if mp.HSTR_WEIGHT >= 11 then
    (mp.set_mpattribute)("HSTR:KasidetLowfi")
  end
end
return mp.CLEAN

