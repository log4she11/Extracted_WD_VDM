-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3363.luac 

-- params : ...
-- function num : 0
Infrastructure_ScanWDFirewallBlockRules = function()
  -- function num : 0_0
  local l_1_0 = {}
  l_1_0["mpcmdrun.exe"] = true
  l_1_0["msascui.exe"] = true
  l_1_0["configsecuritypolicy.exe"] = true
  l_1_0["mpuxsrv.exe"] = true
  l_1_0["msascuil.exe"] = true
  l_1_0["msmpeng.exe"] = true
  l_1_0["mssense.exe"] = true
  l_1_0["sensecncproxy.exe"] = true
  l_1_0["sensesampleuploader.exe"] = true
  l_1_0["senseir.exe"] = true
  local l_1_1 = {}
  l_1_1.sense = true
  l_1_1.windefend = true
  local l_1_2 = "HKLM\\SYSTEM\\ControlSet001\\Services\\SharedAccess\\Parameters\\FirewallPolicy\\FirewallRules"
  local l_1_3 = "HKLM\\SYSTEM\\ControlSet002\\Services\\SharedAccess\\Parameters\\FirewallPolicy\\FirewallRules"
  local l_1_4 = {}
  -- DECOMPILER ERROR at PC19: No list found for R4 , SetList fails

  -- DECOMPILER ERROR at PC20: Overwrote pending register: R5 in 'AssignReg'

  -- DECOMPILER ERROR at PC21: Overwrote pending register: R6 in 'AssignReg'

  for l_1_8,l_1_9 in l_1_2(l_1_3) do
    local l_1_10 = (sysio.RegOpenKey)(l_1_9)
    if l_1_10 then
      local l_1_11 = (sysio.RegEnumValues)(l_1_10)
      for l_1_15,l_1_16 in pairs(l_1_11) do
        if l_1_16 then
          local l_1_17 = (sysio.GetRegValueAsString)(l_1_10, l_1_16)
          if l_1_17 then
            l_1_17 = (string.lower)(l_1_17)
            if (string.find)(l_1_17, "action=block|active=true", 1, true) then
              local l_1_18 = (string.match)(l_1_17, "|app=.*\\([^\\]+%.exe)")
              if l_1_18 and l_1_0[l_1_18] then
                (MpDetection.ReportResource)("regkeyvalue", l_1_9 .. "\\\\" .. l_1_16, 2591, false)
              end
            end
          end
        end
        l_1_18 = (string.match)(l_1_17, "|svc=([^|]+)")
        if l_1_18 and l_1_1[l_1_18] then
          (MpDetection.ReportResource)("regkeyvalue", l_1_9 .. "\\\\" .. l_1_16, 2591, false)
        end
      end
    end
  end
  -- DECOMPILER ERROR at PC107: Confused about usage of register R6 for local variables in 'ReleaseLocals'

end


