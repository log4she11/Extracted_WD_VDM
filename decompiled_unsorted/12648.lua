-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12648.luac 

-- params : ...
-- function num : 0
if peattributes.no_resources and peattributes.suspicious_dosheader then
  return mp.INFECTED
end
return mp.CLEAN

