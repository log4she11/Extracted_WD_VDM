-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17360.luac 

-- params : ...
-- function num : 0
if peattributes.isdll == true and peattributes.no_resources == true and peattributes.no_debug == true and peattributes.no_delayimport == true and peattributes.no_loadconfig == true then
  return mp.INFECTED
end
return mp.CLEAN

