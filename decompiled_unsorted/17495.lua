-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17495.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_no_exports") and (mp.get_mpattribute)("pea_no_boundimport") and (mp.getfilesize)() >= 2404352 and (mp.getfilesize)() < 2428928 then
  return mp.INFECTED
end
return mp.CLEAN

