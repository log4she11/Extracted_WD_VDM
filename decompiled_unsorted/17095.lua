-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17095.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() < 2064000 and (mp.get_mpattribute)("pea_headerchecksum0") and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

