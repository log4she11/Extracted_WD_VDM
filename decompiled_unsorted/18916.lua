-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18916.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("RPF:TopLevelFile") and not (mp.get_mpattribute)("AGGR:MSIL:GenCommercialObfuscator.A") and ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).RVA == 0 then
  return mp.INFECTED
end
return mp.CLEAN

