-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14729.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("pea_headerchecksum0") and (mp.getfilesize)() < 1536000 then
  return mp.INFECTED
end
return mp.CLEAN

