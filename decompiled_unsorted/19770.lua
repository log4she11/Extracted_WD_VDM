-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19770.luac 

-- params : ...
-- function num : 0
if (string.find)((string.lower)((mp.getfilename)()), "lenovo", 1, true) ~= nil or (mp.get_mpattribute)("PACKED_WITH:[MSILRES:DisplayFusion.Properties.Resources.resources]") then
  (mp.set_mpattribute)("HSTR:AllowList:SkypeSneak")
  return mp.CLEAN
end
return mp.INFECTED

