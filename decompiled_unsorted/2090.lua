-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2090.luac 

-- params : ...
-- function num : 0
if #(mp.enum_mpattributesubstring)("SCPT:CodeOnly.CVE-2019-9670") >= 5 then
  return mp.INFECTED
end
return mp.CLEAN

