-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3014.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 100 then
  return mp.CLEAN
end
local l_0_1 = (mp.enum_mpattributesubstring)("SCPT:SockScoutScript")
if #l_0_1 < 3 then
  return mp.CLEAN
end
local l_0_2, l_0_3 = pcall(mp.getfilename, mp.FILEPATH_QUERY_PATH)
if l_0_2 then
  if not l_0_3:find("\\Scripts", 1, true) then
    return mp.CLEAN
  else
    ;
    (mp.set_mpattribute)("MpNonPIIFileType")
    return mp.INFECTED
  end
end
return mp.CLEAN

