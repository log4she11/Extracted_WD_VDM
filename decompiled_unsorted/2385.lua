-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2385.luac 

-- params : ...
-- function num : 0
if NecursDeviceTrigger() then
  local l_0_0 = {}
  local l_0_1 = nil
  local l_0_2 = 0
  l_0_1 = NecursServiceScan(l_0_0)
  if not l_0_1 and l_0_2 ~= 0 and l_0_2 == 1243 then
    (Trigger.TriggerKernelScan)("NecursDeviceTrigger")
  end
  if l_0_1 then
    local l_0_3 = (string.lower)(l_0_0[1] .. "," .. l_0_0[2])
    l_0_1 = (Detection.GenerateDetection)(2147683528, l_0_3)
    return l_0_1
  end
end

