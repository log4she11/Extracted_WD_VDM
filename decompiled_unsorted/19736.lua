-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19736.luac 

-- params : ...
-- function num : 0
if peattributes.x86_image == true and peattributes.epoutofimage == true and peattributes.hasexports == true and peattributes.no_security == true and peattributes.no_uidata == true and peattributes.no_exception == true and peattributes.no_mipsgp == true and peattributes.no_boundimport == true and peattributes.no_ep == true then
  return mp.INFECTED
end
return mp.CLEAN

