-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2286.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (bm.get_process_relationships)()
for l_0_5,l_0_6 in ipairs(l_0_1) do
  if not IsTechniqueObservedForPid(l_0_6.ppid, "susp_spoolhack") then
    TrackPidAndTechniqueBM(l_0_6.ppid, "susp_spoolhack", "spool_childproc", 28800)
  end
end
return mp.INFECTED

