-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/10545.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_hasappendeddata") then
  return mp.LOWFI
end
return mp.CLEAN

