-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14737.luac 

-- params : ...
-- function num : 0
if (string.lower)((string.sub)((mp.getfilename)(), -3)) == "r2w" then
  return mp.CLEAN
end
return mp.INFECTED

