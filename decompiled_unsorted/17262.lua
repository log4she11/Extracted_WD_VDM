-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17262.luac 

-- params : ...
-- function num : 0
if (string.find)((string.lower)((mp.getfilename)()), ".inetloc") ~= nil or (string.find)((string.lower)((mp.getfilename)()), ".fileloc") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

