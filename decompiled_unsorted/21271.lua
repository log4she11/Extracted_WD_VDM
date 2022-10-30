-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21271.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("RPF:TopLevelFile") then
  return mp.CLEAN
end
if (mp.get_mpattribute)("CMN:HSTR:InstallerFile") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 1800000 or l_0_0 < 4000 then
  return mp.CLEAN
end
if (mp.get_mpattribute)("PEPCODE:HasDigitalSignature") then
  return mp.CLEAN
end
local l_0_1 = ((MpCommon.PathToWin32Path)((mp.getfilename)(mp.FILEPATH_QUERY_FULL))):lower()
if l_0_1:find("program files", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("system32", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("\\appdata\\local\\", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

