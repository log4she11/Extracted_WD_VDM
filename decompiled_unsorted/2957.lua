-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2957.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("//Lua:GIOAVTopLevelRarHasSingleStoredFileWithExeExtension") and not (mp.get_mpattribute)("RPF:TopLevelFile") and not (mp.get_mpattribute)("//GIOAVSingleStoredEXEInTopLevelRARFile") then
  (mp.set_mpattribute)("Lua:IOAVSingleStoredEXEInTopLevelRARFile")
  ;
  (mp.set_mpattribute)("//GIOAVSingleStoredEXEInTopLevelRARFile")
  ;
  (mp.set_mpattribute)("MpNonCachedLowfi")
end
if (mp.get_mpattribute)("//Lua:GIOAVTopLevelRarHasSingleFileWithExeExtension") and not (mp.get_mpattribute)("RPF:TopLevelFile") and not (mp.get_mpattribute)("//GIOAVSingleEXEInTopLevelRARFile") then
  (mp.set_mpattribute)("Lua:IOAVSingleEXEInTopLevelRARFile")
  ;
  (mp.set_mpattribute)("//GIOAVSingleEXEInTopLevelRARFile")
  ;
  (mp.set_mpattribute)("MpNonCachedLowfi")
end
return mp.CLEAN

