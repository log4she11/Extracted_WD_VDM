-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16726.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).wp2 == nil then
  return mp.CLEAN
end
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).wp2 == nil then
  return mp.CLEAN
end
return mp.INFECTED

