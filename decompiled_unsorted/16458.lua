-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16458.luac 

-- params : ...
-- function num : 0
if (string.lower)(((pe.get_versioninfo)()).ProductName) == "zoomify plug-in for internet explorer" then
  return mp.INFECTED
end
return mp.CLEAN

