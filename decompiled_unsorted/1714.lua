-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1714.luac 

-- params : ...
-- function num : 0
local l_0_0 = nil
local l_0_1, l_0_2 = , (bm.get_process_relationships)()
if l_0_2 ~= nil then
  for l_0_6,l_0_7 in ipairs(l_0_2) do
    local l_0_3 = nil
    -- DECOMPILER ERROR at PC9: Confused about usage of register: R7 in 'UnsetPending'

    if R7_PC9.image_path ~= nil then
      l_0_1 = (string.lower)((MpCommon.PathToWin32Path)(R7_PC9.image_path))
      if (string.find)(l_0_1, "\\taniumclient.exe", -17, true) or (string.find)(l_0_1, "\\wbem\\wmiprvse.exe", -18, true) or (string.find)(l_0_1, "\\microsoft intune management extension\\agentexecutor.exe", -56, true) or (string.find)(l_0_1, "\\netlogon\\mdatp\\windowsdefenderatponboardingscript.cmd", -54, true) or (string.find)(l_0_1, "\\qualysagent\\qualysagent.exe", -28, true) or (string.find)(l_0_1, "\\quest\\kace\\kdeploy.exe", -23, true) or (string.find)(l_0_1, "\\windows defender advanced threat protection\\senseir.exe", -56, true) or (string.find)(l_0_1, "\\sng\\abtsngsvc.exe", -18, true) then
        return mp.CLEAN
      end
    end
    if (sysio.IsFileExists)(l_0_1) and not (mp.IsKnownFriendlyFile)(l_0_1, true, false) then
      (bm.add_related_file)(l_0_1)
    end
  end
end
do
  return mp.INFECTED
end

