-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2102.luac 

-- params : ...
-- function num : 0
if #(mp.enum_mpattributesubstring)("SCPT:CodeOnly.CVE-2021-21972") >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

