-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2924.luac 

-- params : ...
-- function num : 0
local l_0_0 = ((MpCommon.PathToWin32Path)((mp.getfilename)(mp.FILEPATH_QUERY_FULL))):lower()
if l_0_0:find("fuzz", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("ctf", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("test.html", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("test_", 1, true) then
  return mp.CLEAN
end
if l_0_0:find("kali", 1, true) then
  return mp.CLEAN
end
if #(mp.enum_mpattributesubstring)("SCPT:CodeOnly.UseMojoJsBindings") >= 2 then
  return mp.INFECTED
end
return mp.CLEAN

