-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19014.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched then
  local l_0_0 = (this_sigattrlog[1]).utf8p1
  if l_0_0 == nil then
    return mp.CLEAN
  end
  local l_0_1 = (string.lower)((string.match)(l_0_0, "(.-)[^\\]-[^\\%.]+$"))
  if l_0_1 ~= nil and (string.len)(l_0_1) == 3 and l_0_1 ~= "c:\\" then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

