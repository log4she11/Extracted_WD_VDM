-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2684.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0:find("\\.inspec\\cache\\", 1, true) then
  return mp.CLEAN
end
if #(mp.enum_mpattributesubstring)("SCPT:CVE-2020-1350") * 2 + #(mp.enum_mpattributesubstring)("SCPT:CodeOnly.DnsExploitPoc.B") >= 4 then
  return mp.INFECTED
end
return mp.CLEAN

