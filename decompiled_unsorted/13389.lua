-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/13389.luac 

-- params : ...
-- function num : 0
(mp.set_mpattribute)("HSTR:BetterSurf")
if mp.HSTR_WEIGHT >= 7 then
  return mp.INFECTED
end
return mp.CLEAN

