-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17811.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).utf8p2 ~= nil then
  (bm.add_related_file)((this_sigattrlog[3]).utf8p2)
end
if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
  (bm.add_related_file)((this_sigattrlog[4]).utf8p2)
end
return mp.INFECTED

