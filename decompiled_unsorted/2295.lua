-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2295.luac 

-- params : ...
-- function num : 0
if (mp.getfilesize)() > 1048576 then
  return mp.CLEAN
end
if #(mp.enum_mpattributesubstring)("SCPT:CVE-2019-1652-A") >= 10 and #(mp.enum_mpattributesubstring)("SCPT:CVE-2019-1653-") >= 3 then
  return mp.INFECTED
else
  return mp.CLEAN
end
return mp.CLEAN

