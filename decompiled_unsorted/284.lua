-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/284.luac 

-- params : ...
-- function num : 0
if IsLegacyOrgMachine() then
  return mp.CLEAN
end
bm_AddRelatedFileFromCommandLine("BM", nil, nil, 2)
return mp.INFECTED

