-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3288.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON)
if l_0_0 == nil or l_0_0 ~= mp.SCANREASON_ONOPEN and l_0_0 ~= mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  return mp.CLEAN
end
local l_0_1 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_1 == nil or #l_0_1 < 4 or #l_0_1 > 50 then
  return mp.CLEAN
end
if l_0_1 == "powershell.exe" then
  local l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_PROCESS_PPID)
  if l_0_2 == nil then
    return mp.CLEAN
  end
  local l_0_3 = (mp.GetProcessCommandLine)(l_0_2)
  if l_0_3 == nil and #l_0_3 <= 5 then
    return mp.CLEAN
  end
  local l_0_4 = (string.lower)((string.gsub)(l_0_3, " ", ""))
  local l_0_5 = "Lua:ProcCmdLineContext.A!"
  if #l_0_4 > 100 and #l_0_4 < 350 and (string.find)(l_0_4, "-command\"if(get-command\'get-windowsfeature\'-erroractionsilentlycontinue){get-windowsfeature-nameweb-server|convertto-json|out-file", 1, true) ~= nil then
    local l_0_6 = l_0_5 .. "PsAzureArc"
    ;
    (mp.set_mpattribute)(l_0_6)
  end
end
do
  return mp.CLEAN
end

