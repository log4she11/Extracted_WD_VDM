-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/843.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2 = nil
if (bm.get_current_process_startup_info)() ~= nil and ((bm.get_current_process_startup_info)()).command_line ~= nil and ((bm.get_current_process_startup_info)()).ppid ~= nil then
  local l_0_3 = (string.lower)(((bm.get_current_process_startup_info)()).command_line)
  if ((bm.get_imagepath)() ~= nil and (MpCommon.PathToWin32Path)((bm.get_imagepath)()) == nil) or l_0_2 == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC36: Confused about usage of register: R3 in 'UnsetPending'

  if StringStartsWith((string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)())), "%") then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC48: Confused about usage of register: R3 in 'UnsetPending'

  -- DECOMPILER ERROR at PC55: Confused about usage of register: R3 in 'UnsetPending'

  -- DECOMPILER ERROR at PC60: Confused about usage of register: R3 in 'UnsetPending'

  -- DECOMPILER ERROR at PC65: Confused about usage of register: R3 in 'UnsetPending'

  if ((string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))):find("\\adminarsenal\\", 1, true) or ((string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))):find("ccmexec%.exe") or ((string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))):find("bomgar%-scc%.exe") or ((string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))):find("keyacc32%.exe") then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC73: Confused about usage of register: R3 in 'UnsetPending'

  -- DECOMPILER ERROR at PC80: Confused about usage of register: R3 in 'UnsetPending'

  if ((string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))):find("\\temp\\kav remote installations\\", 1, true) or ((string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))):find("\\logmein rescue connectonlan\\lmirescueapplet", 1, true) then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC90: Confused about usage of register: R3 in 'UnsetPending'

  -- DECOMPILER ERROR at PC95: Confused about usage of register: R3 in 'UnsetPending'

  if ((string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))):find("\\veeam.+%.exe") or ((string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))):find("\\f5.+%.exe") then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC103: Confused about usage of register: R3 in 'UnsetPending'

  if ((string.lower)((MpCommon.PathToWin32Path)((bm.get_imagepath)()))):find("\\pdq.+%.exe") then
    return mp.CLEAN
  end
  if l_0_3:find("advanced threat protection\\datacollection\\", 1, true) then
    return mp.CLEAN
  end
  local l_0_4 = nil
  if GetTaintLevelHR() == "High" and ((mp.IsHipsRuleEnabled)("01443614-cd74-433a-b99e-2ecdc07bfc25") or (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35")) then
    TrackPidAndTechniqueBM(l_0_2, "T1021.002", "tt_remediate_cantidate")
    return mp.INFECTED
  end
  return mp.CLEAN
end

