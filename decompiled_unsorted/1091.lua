-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1091.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
do
  if (l_0_0 == "" or (string.find)(l_0_0, "\\wmiprvse.exe", 1, true)) and (this_sigattrlog[1]).matched and (this_sigattrlog[1]).utf8p2 ~= nil then
    local l_0_1 = (this_sigattrlog[1]).utf8p2
    if (string.find)(l_0_1, "/Q ", 1, true) and (string.find)(l_0_1, "/c ", 1, true) and not (string.find)(l_0_1, "/Q /D ", 1, true) and not (string.find)(l_0_1, "/Q /c netstat -anop TCP 1>", 1, true) and not (string.find)(l_0_1, "/U /Q ", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

