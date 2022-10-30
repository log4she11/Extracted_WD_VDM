-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2822.luac 

-- params : ...
-- function num : 0
(MpDetection.ScanResource)("rootcert://")
;
(MpDetection.ScanResource)("rootcertuser://")
local l_0_0 = (MpDetection.GetCurrentThreat)()
if (string.find)(l_0_0.Name, "Program:Win32/CompromisedCert.C", 1, true) then
  local l_0_1 = (MpCommon.ExpandEnvironmentVariables)("%ProgramFiles%")
  if l_0_1 then
    local l_0_2 = l_0_1 .. " (x86)\\Dell"
    local l_0_3 = l_0_1 .. "\\Dell"
    if (sysio.IsFolderExists)(l_0_2) then
      (MpDetection.ScanResource)("folder://" .. l_0_2)
    end
    if (sysio.IsFolderExists)(l_0_3) then
      (MpDetection.ScanResource)("folder://" .. l_0_3)
    end
  end
end

