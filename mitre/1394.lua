-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1394.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched then
  local l_0_0 = (this_sigattrlog[2]).utf8p1
  if l_0_0 ~= nil and (string.len)(l_0_0) > 4 and (string.sub)(l_0_0, -4) == ".lnk" then
    do
      do
        if (this_sigattrlog[1]).matched then
          local l_0_1 = (this_sigattrlog[1]).utf8p2
          bm_AddRelatedFileFromCommandLine(l_0_1)
        end
        TrackPidAndTechniqueBM("BM", "T1547.009", "persistence_source")
        TrackPidAndTechniqueBM("BM", "T1547.009", "ShortcutFileInStartup.H")
        TrackFileAndTechnique(l_0_0, "T1547.009:persistence_target")
        TrackFileAndTechnique(l_0_0, "T1547.009:ShortcutFileInStartup.H")
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

