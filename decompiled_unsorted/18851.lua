-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18851.luac 

-- params : ...
-- function num : 0
if peattributes.ismsil == true and ((mp.get_mpattribute)("LUA:FileSizeLE5000.A") or (mp.get_mpattribute)("LUA:FileSizeLE20000.A")) and (mp.get_mpattribute)("pea_headerchecksum0") and peattributes.no_security == true then
  return mp.INFECTED
end
return mp.CLEAN

