-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/554.luac 

-- params : ...
-- function num : 0
TrackPidAndTechnique("CMDHSTR", "T1560", "archive_collected_data")
if IsDetectionThresholdMet("CMDHSTR") then
  return mp.LOWFI
end
return mp.LOWFI

