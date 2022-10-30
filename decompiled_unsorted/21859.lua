-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21859.luac 

-- params : ...
-- function num : 0
if (this_sigattrlog[1]).matched and (this_sigattrlog[3]).matched and (this_sigattrlog[4]).matched and (this_sigattrlog[6]).matched then
  local l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
  local l_0_1 = (string.match)((string.lower)((this_sigattrlog[3]).utf8p1), "^(.+)\\\\imagepath")
  if l_0_0 ~= l_0_1 then
    return mp.CLEAN
  end
  local l_0_2 = (string.lower)((this_sigattrlog[3]).utf8p2)
  if l_0_2 == nil or (string.len)(l_0_2) <= 8 or (string.find)(l_0_2, "\\tweaking_ras.exe", 1, true) then
    return mp.CLEAN
  else
    if (string.find)(l_0_2, "powershell", 1, true) or (string.find)(l_0_2, "wscript", 1, true) or (string.find)(l_0_2, "cscript", 1, true) or (string.find)(l_0_2, "mshta", 1, true) or (string.find)(l_0_2, "cmd.exe /c ", 1, true) or (string.find)(l_0_2, "cmd.exe /q /c ", 1, true) or (string.find)(l_0_2, "cmd /c ", 1, true) or (string.find)(l_0_2, "cmd /q /c ", 1, true) or (string.find)(l_0_2, "%comspec% ", 1, true) or (string.find)(l_0_2, "/c start ", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end
do
  return mp.CLEAN
end

