-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16489.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:GoogleSoftwareRemovalTool") == true then
  return mp.CLEAN
end
;
(mp.set_mpattribute)("PUA:Block:CrossRider")
return mp.INFECTED

