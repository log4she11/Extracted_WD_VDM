-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3845.luac 

-- params : ...
-- function num : 0
if reportGenericRansomwareRQ("genf_linux_ransom_meta") == mp.INFECTED then
  TrackPidAndTechniqueBM("BM", "T1486", "Impact_FileEncryption")
  return mp.INFECTED
end
return mp.CLEAN

