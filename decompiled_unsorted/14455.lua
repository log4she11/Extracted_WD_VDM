-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/14455.luac 

-- params : ...
-- function num : 0
if peattributes.no_security == true and peattributes.isdll == true and peattributes.hasexports == true then
  return mp.INFECTED
end
return mp.CLEAN

