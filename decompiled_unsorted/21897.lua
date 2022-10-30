-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21897.luac 

-- params : ...
-- function num : 0
if (MpCommon.GetPersistContextCountNoPath)("Lua:MpRequestEmsScan") > 0 then
  local l_0_0 = (MpCommon.GetPersistContextNoPath)("Lua:MpRequestEmsScan")
  if l_0_0 then
    local l_0_1 = (mp.GetScannedPPID)()
    if l_0_1 == nil then
      return mp.CLEAN
    end
    local l_0_2 = (MpCommon.GetImagePathFromPid)(l_0_1)
    if l_0_2 == nil then
      return mp.CLEAN
    end
    local l_0_3 = (MpCommon.PathToWin32Path)(l_0_2)
    if l_0_3 == nil then
      return mp.CLEAN
    end
    local l_0_4 = (string.lower)((mp.GetProcessCommandLine)(l_0_1))
    if l_0_4 == nil then
      return mp.CLEAN
    end
    if (string.find)(l_0_4, "beammp-launcher", 1, true) or (string.find)(l_0_4, "nginx", 1, true) then
      return mp.CLEAN
    end
    for l_0_8,l_0_9 in ipairs(l_0_0) do
      local l_0_10, l_0_11 = (string.match)(l_0_9, "^(%d%d%d+)_(.+)$")
      if l_0_10 ~= nil and l_0_11 ~= nil and (string.len)(l_0_11) > 7 and (string.find)((string.lower)(l_0_11), (string.lower)(l_0_3), 1, true) then
        local l_0_12, l_0_13 = (string.match)(l_0_1, "^pid:(%w+),ProcessStart:(%w+)$")
        local l_0_14 = tonumber(l_0_12)
        local l_0_15 = tonumber(l_0_13)
        local l_0_16, l_0_17 = (mp.bsplit)(l_0_15, 32)
        local l_0_18 = (string.format)("ppids:{{%d,%d,%d}}\000", l_0_14, l_0_16, l_0_17)
        ;
        (mp.TriggerScanResource)("ems", l_0_18, mp.SCANSOURCE_RTSIG, l_0_10)
        return mp.INFECTED
      end
    end
  end
end
do
  l_0_0 = mp
  l_0_0 = l_0_0.CLEAN
  return l_0_0
end

