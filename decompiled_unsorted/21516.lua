-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21516.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[2]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[2]).utf8p2)
  l_0_0 = (string.gsub)(l_0_0, " ", "")
  if (string.len)(l_0_0) < 200 then
    return mp.CLEAN
  end
  if (string.len)(l_0_0) > 1024 then
    return mp.INFECTED
  end
  if (string.find)(l_0_0, "powershell", 1, true) or (string.find)(l_0_0, "iex(", 1, true) or (string.find)(l_0_0, "join[regex]::matches", 1, true) or (string.find)(l_0_0, "::frombase64string", 1, true) then
    return mp.INFECTED
  end
  local l_0_1 = 0
  for l_0_5 in (string.gmatch)(l_0_0, "^") do
    l_0_1 = l_0_1 + 1
  end
  for l_0_9 in (string.gmatch)(l_0_0, "\'.-\'%+") do
    l_0_1 = l_0_1 + 1
  end
  for l_0_13 in (string.gmatch)(l_0_0, "{%d%d?}{%d%d?}") do
    l_0_1 = l_0_1 + 1
  end
  if l_0_1 >= 10 then
    return mp.INFECTED
  end
end
do
  return mp.CLEAN
end

