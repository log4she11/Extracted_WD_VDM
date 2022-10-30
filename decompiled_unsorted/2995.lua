-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2995.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("AndroidOS:HSTR:Generality.C") then
  return mp.CLEAN
end
if not (mp.get_mpattribute)("AndroidOS:HSTR:AndroidElf") then
  local l_0_0 = ((string.sub)((mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)), -5)):match("(%.%w+)$")
  local l_0_1 = {}
  l_0_1[".ko"] = ""
  l_0_1[".o"] = ""
  if l_0_1[l_0_0] then
    return mp.CLEAN
  end
  local l_0_2 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
  if l_0_2:find("snort", 1, true) then
    return mp.CLEAN
  end
end
do
  if #(mp.enum_mpattributesubstring)("TEL:Exploit:Android/CVE") == 0 then
    return mp.INFECTED
  end
  return mp.CLEAN
end

