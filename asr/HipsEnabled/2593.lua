-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2593.luac 

-- params : ...
-- function num : 0
if not (mp.IsHipsRuleEnabled)("92e97fa1-2edf-4476-bdd6-9dd0b4dddc7b") then
  return mp.CLEAN
end
local l_0_0, l_0_1 = pcall(mp.get_contextdata, mp.CONTEXT_DATA_AMSI_CONTENTNAME)
if l_0_0 and (sysio.IsPathAVExcluded)(l_0_1, false) then
  (mp.set_mpattribute)("Lua:OfficeVBASkipKnownCleanOriginalFile")
end
return mp.CLEAN

