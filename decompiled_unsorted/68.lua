-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/68.luac 

-- params : ...
-- function num : 0
if (MpCommon.GetPersistContextCountNoPath)("TaintedMachineML_Medium") > 0 then
  return mp.INFECTED
end
return mp.CLEAN

