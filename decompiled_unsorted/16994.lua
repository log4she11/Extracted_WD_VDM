-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16994.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p1 ~= nil and (string.match)((this_sigattrlog[1]).utf8p1, "%.ini$") ~= nil then
  return mp.CLEAN
end
return mp.INFECTED

