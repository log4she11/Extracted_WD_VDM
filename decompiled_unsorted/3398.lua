-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3398.luac 

-- params : ...
-- function num : 0
RemovePayloadFromRegistry = function(l_1_0, l_1_1)
  -- function num : 0_0
  local l_1_2 = (sysio.RegOpenKey)(l_1_0)
  if l_1_2 then
    local l_1_3 = (string.lower)((sysio.GetRegValueAsString)(l_1_2, l_1_1))
    if l_1_3 then
      (sysio.DeleteRegKey)(l_1_2, nil)
    end
  end
end

RemoveMisfoxASEPs = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = (sysio.RegOpenKey)(l_2_0)
  if l_2_1 then
    local l_2_2 = (sysio.RegEnumValues)(l_2_1)
    for l_2_6,l_2_7 in pairs(l_2_2) do
      local l_2_8 = (string.lower)((sysio.GetRegValueAsString)(l_2_1, l_2_7))
      if not l_2_8 then
        return false
      end
      local l_2_9, l_2_10 = (string.match)(l_2_8, "%(%[text%.encoding%]::ascii%.getstring%(%[convert%]::frombase64string%(%(gp.*(hk%w%w:\\\\?software\\\\?classes\\\\?%w%w%w%w+).*%.(%w%w%w%w+)%)")
      if l_2_9 then
        (sysio.DeleteRegValue)(l_2_1, l_2_7)
        l_2_9 = (string.gsub)(l_2_9, "\\\\", "\\")
        l_2_9 = (string.gsub)(l_2_9, ":\\", "\\")
        local l_2_11 = (sysio.RegExpandUserKey)(l_2_9)
        for l_2_15,l_2_16 in pairs(l_2_11) do
          RemovePayloadFromRegistry(l_2_16, l_2_10)
        end
      end
    end
    -- DECOMPILER ERROR at PC68: Confused about usage of register R6 for local variables in 'ReleaseLocals'

  end
end

if (string.match)((Remediation.Threat).Name, "Win32/Misfox") or (string.match)((Remediation.Threat).Name, "PowerShell/Misfox") then
  RemoveMisfoxASEPs("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run")
  local l_0_0 = (sysio.RegExpandUserKey)("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Run")
  for l_0_4,l_0_5 in pairs(l_0_0) do
    RemoveMisfoxASEPs(l_0_5)
  end
end

