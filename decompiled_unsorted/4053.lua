-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4053.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 == nil or l_0_0 == "" then
  return mp.CLEAN
end
if (string.find)(l_0_0, "/bin/zip", -8, true) or (string.find)(l_0_0, "/bin/tar", -8, true) or (string.find)(l_0_0, "/bin/gzip", -9, true) or (string.find)(l_0_0, "/7z", -3, true) or (string.find)(l_0_0, "/7za", -4, true) or (string.find)(l_0_0, "/usr/bin/file-roller", 1, true) == 1 or (string.find)(l_0_0, "/7zz", -4, true) then
  (bm.trigger_sig)("FileArchiving", "Detected")
end
return mp.CLEAN

