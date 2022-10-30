-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1039.luac 

-- params : ...
-- function num : 0
if not (this_sigattrlog[1]).utf8p1 then
  return mp.CLEAN
end
local l_0_0 = (this_sigattrlog[1]).utf8p1
if not (this_sigattrlog[1]).utf8p2 then
  return mp.CLEAN
end
local l_0_1 = (this_sigattrlog[1]).utf8p2
local l_0_2 = (string.match)(l_0_0, "\\Services\\([%u%d]+)\\\\ImagePath")
if not l_0_2 then
  return mp.CLEAN
end
local l_0_3 = (string.match)(l_0_1, "\\([%u%d]+)%.sys")
if not l_0_3 then
  return mp.CLEAN
end
if l_0_2 == l_0_3 then
  if (sysio.IsFileExists)(l_0_1) then
    (bm.add_related_file)(l_0_1)
  end
  return mp.INFECTED
end
return mp.CLEAN

