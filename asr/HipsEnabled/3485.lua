-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3485.luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550") then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_NEWLYCREATEDHINT) ~= true then
  return mp.CLEAN
end
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_PATH), mp.FILEPATH_QUERY_LOWERCASE))
if (string.len)(l_0_1) < 4 or (string.len)(l_0_0) < 20 then
  return mp.CLEAN
end
local l_0_2 = ((string.sub)(l_0_1, -4)):match("%.(%w+)$")
if l_0_2 == nil then
  return mp.CLEAN
end
if not IsSuspiciousFileExt(l_0_2) then
  return mp.CLEAN
end
local l_0_3 = "|winzip.exe|winzip64.exe|winrar.exe|rar.exe|7zfm.exe|7z.exe|"
local l_0_4 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_3:find("|" .. l_0_4 .. "|", 1, true) == nil then
  return mp.CLEAN
end
local l_0_5 = l_0_4 .. "[\"/&%%%*%-%w%s]* \"(.-)\""
local l_0_6 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
local l_0_7 = (mp.GetProcessCommandLine)(l_0_6)
if l_0_7 == nil then
  return mp.CLEAN
end
local l_0_8 = (string.match)(l_0_7:lower(), l_0_5)
if l_0_8 == nil then
  return mp.CLEAN
end
if (MpCommon.QueryPersistContext)(l_0_8, "ContextualDropEncryptedArchiveByEmail") or l_0_8:find("\\temporary internet files\\content.outlook\\", 1, true) or l_0_8:find("\\inetcache\\content.outlook\\", 1, true) then
  (mp.set_mpattribute)("MpDisableCaching")
  local l_0_9 = "enghipscpy:blockaccess:be9ba2d9-53ea-4cdc-84e5-9b1eeee46550"
  if not (MpCommon.QueryPersistContext)((mp.getfilename)(), l_0_9) then
    (MpCommon.AppendPersistContext)((mp.getfilename)(), l_0_9, 0)
  end
  ;
  (mp.SetHipsRule)("be9ba2d9-53ea-4cdc-84e5-9b1eeee46550")
  return mp.BLOCKACCESS
end
do
  return mp.CLEAN
end

