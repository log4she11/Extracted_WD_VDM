-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19806.luac 

-- params : ...
-- function num : 0
if peattributes.epoutofimage == true and peattributes.x86_image == true and peattributes.hasexports == true and peattributes.no_ep == true and peattributes.no_security == true and peattributes.suspicious_falign == true and peattributes.no_comruntime == true and peattributes.no_delayimport == true and peattributes.no_uidata == true then
  return mp.INFECTED
end
return mp.CLEAN

