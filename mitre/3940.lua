-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3940.luac 

-- params : ...
-- function num : 0
if IsProcessExcludedFromRansomwareAnalysis() == true then
  return mp.CLEAN
end
addRelatedProcess()
reportRelatedBmHits()
TrackPidAndTechniqueBM("BM", "T1486", "Impact_FileEncryption")
RemediateProcessTreeForLinux()
return mp.INFECTED

