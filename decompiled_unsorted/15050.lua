-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/15050.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("Suspicious:CraftedPE_Import") then
  (mp.set_mpattribute)("Suspicious:CraftedFile_Import")
end
return mp.CLEAN

