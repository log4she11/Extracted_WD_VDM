-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17632.luac 

-- params : ...
-- function num : 0
if peattributes.suspicious_image_version and pehdr.MajorImageVersion == 13 and pehdr.MinorImageVersion == 32 then
  (mp.changedetectionname)(805306482)
end
return mp.INFECTED

