-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2418.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
local l_0_1 = "CabDroppedByExcel"
local l_0_2 = (MpCommon.QueryPersistContext)(l_0_0, l_0_1)
if not l_0_2 then
  (MpCommon.AppendPersistContext)(l_0_0, l_0_1, 100)
end
;
(mp.set_mpattribute)("MpDisableCaching")
return mp.INFECTED

