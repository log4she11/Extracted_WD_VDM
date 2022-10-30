-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/127.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_current_process_startup_info)()
if l_0_0 ~= nil and l_0_0.ppid ~= nil and l_0_0.command_line ~= nil then
  local l_0_1 = l_0_0.command_line
  local l_0_2 = (string.lower)(l_0_1)
  if l_0_2:find("powershell", 1, true) or (l_0_2.find)("pwsh", 1, true) then
    if l_0_2:find("microsoft.skypeapp", 1, true) or l_0_2:find("final result:", 1, true) then
      return mp.CLEAN
    end
    if l_0_2:find("windows\\ccm", 1, true) or l_0_2:find("\\sysvol\\", 1, true) or l_0_2:find("\\netlogon\\", 1, true) then
      return mp.CLEAN
    end
    if l_0_2:match("%s+[%-/]en?c?o?d?e?d?c?o?m?m?a?n?d?%s+") then
      local l_0_3 = GetTacticsTableForPid(l_0_0.ppid)
      if ((((((((not l_0_3.obfuscation_b64 or l_0_3.intent_cred_enum_amsi) and not l_0_3.intent_schtask_amsi) or l_0_3.intent_schtask_script) and not l_0_3.posh_remote_exec) or l_0_3.posh_webaccess) and not l_0_3.posh_apiexec) or l_0_3.amsi_bypass) and not l_0_3.amsitampering) or 0 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 2 + 2 > 2 then
        return mp.INFECTED
      end
    end
  end
end
do
  return mp.CLEAN
end

