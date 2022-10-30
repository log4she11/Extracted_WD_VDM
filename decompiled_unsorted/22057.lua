-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22057.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("Lua:ZIPExt") and not (mp.get_mpattribute)("RPF:TopLevelFile") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 1000000 or l_0_0 < 4000 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1:find("kali", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("\\data\\exploits\\", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("metasploit", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("program files", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("cve-20", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("jailbreak", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("jwrapper", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("meridian", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("v0rtex", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("futurerestore", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("undecimus", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("tmsminstall", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("unc0ver", 1, true) then
  return mp.CLEAN
end
if l_0_1:find(".iso", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("files\\Application", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("files/Application", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("_extension", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

