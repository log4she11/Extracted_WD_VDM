-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2545.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.UfsGetMetadataBool)("Lua:SingleFileIn7Z!ufs", true)
if l_0_0 ~= 0 or not l_0_1 then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_HAS_MOTW_ADS) == true and (mp.GetMOTWZone)() >= 3 then
  (mp.set_mpattribute)("Lua:CmdSingleFileInside7zipWithMotw")
end
return mp.INFECTED

