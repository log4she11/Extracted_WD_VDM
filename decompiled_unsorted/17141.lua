-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17141.luac 

-- params : ...
-- function num : 0
if peattributes.epscn_writable and peattributes.headerchecksum0 and peattributes.no_decription and peattributes.suspicious_image_version then
  return mp.INFECTED
end
return mp.CLEAN

