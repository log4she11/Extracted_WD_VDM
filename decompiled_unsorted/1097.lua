-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1097.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("WPADSuspCacheFile") then
  return mp.CLEAN
end
local l_0_0 = (this_sigattrlog[2]).utf8p1
l_0_0 = (mp.ContextualExpandEnvironmentVariables)(l_0_0)
if (sysio.IsFileExists)(l_0_0) then
  (bm.add_related_file)(l_0_0)
  ;
  (mp.ReportLowfi)(l_0_0, 1402450356)
end
return mp.INFECTED

