-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21955.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 == nil or (string.len)(l_0_0) < 1 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\internet explorer\\", 1, true) or (string.find)(l_0_0, "\\brave-browser\\", 1, true) or (string.find)(l_0_0, "yandexbrowser", 1, true) or (string.find)(l_0_0, "\\mozilla firefox\\", 1, true) or (string.find)(l_0_0, "\\opera", 1, true) or (string.find)(l_0_0, "\\safari\\", 1, true) or (string.find)(l_0_0, "\\sogouexplorer\\", 1, true) or (string.find)(l_0_0, "\\qqbrowser\\", 1, true) or (string.find)(l_0_0, "\\2345explorer\\", 1, true) or (string.find)(l_0_0, "360", 1, true) or (string.find)(l_0_0, "browser", 1, true) or (string.find)(l_0_0, "chrome", 1, true) or (string.find)(l_0_0, "sketchup", 1, true) or (string.find)(l_0_0, "mysql", 1, true) or (string.find)(l_0_0, "proxy", 1, true) or (string.find)(l_0_0, "whale", 1, true) or (string.find)(l_0_0, "maxthon", 1, true) or (string.find)(l_0_0, "sfive", 1, true) or (string.find)(l_0_0, "edge", 1, true) or (string.find)(l_0_0, "\\chromium\\", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

