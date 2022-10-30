-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21339.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetScannedPPID)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.GetProcessCommandLine)(l_0_0))
if (string.find)(l_0_1, "sdelete", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_2 = (versioning.GetLocaleIdentifier)()
if l_0_2 == 1058 or (MpCommon.QueryPersistContextNoPath)("MacMatchesHighRiskProtectionTarget", "on") then
  local l_0_3 = (mp.GetParentProcInfo)()
  if l_0_3 ~= nil then
    local l_0_4 = (string.lower)((string.sub)(l_0_3.image_path, -12))
    if (string.find)(l_0_4, "svchost.exe", 1, true) ~= nil or (string.find)(l_0_4, "wmiprvse.exe", 1, true) ~= nil or l_0_4 == nil then
      return mp.INFECTED
    end
  end
end
do
  return mp.CLEAN
end

