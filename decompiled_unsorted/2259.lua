-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2259.luac 

-- params : ...
-- function num : 0
local l_0_0 = "MpUefiGrubCheck"
local l_0_1 = "MpUefiGrubCfg"
local l_0_2 = "MpUefiSuspTxt"
if (MpCommon.QueryPersistContextNoPath)(l_0_0, l_0_1) and (MpCommon.QueryPersistContextNoPath)(l_0_0, l_0_2) then
  return mp.INFECTED
end
return mp.CLEAN

