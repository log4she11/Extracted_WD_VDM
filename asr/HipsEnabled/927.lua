-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/927.luac 

-- params : ...
-- function num : 0
local l_0_0 = GetTaintLevelHR()
if l_0_0 == "High" and ((mp.IsHipsRuleEnabled)("01443614-cd74-433a-b99e-2ecdc07bfc25") or (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35")) then
  AddResearchData("BM", true)
  return mp.INFECTED
end
return mp.CLEAN

