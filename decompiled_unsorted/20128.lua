-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20128.luac 

-- params : ...
-- function num : 0
if (string.lower)((string.sub)(((pe.get_versioninfo)()).ProductName, 1, 5)) == "award" and mp.HSTR_WEIGHT >= 14 then
  return mp.INFECTED
end
if (mp.get_mpattribute)("HSTR:PossibleKeylogger") and peattributes.hasexports then
  return mp.INFECTED
end
return mp.CLEAN

