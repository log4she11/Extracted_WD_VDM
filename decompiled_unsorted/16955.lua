-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16955.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_isexe") and (mp.get_mpattribute)("Lua:DelphiHeuristicsThrottle") and (mp.getfilesize)() < 1843200 then
  return mp.INFECTED
end
return mp.CLEAN

