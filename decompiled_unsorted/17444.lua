-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17444.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("MpPeekIntoResources") then
  (mp.set_mpattribute)("MpPeekIntoResources")
end
if peattributes.no_security == true and peattributes.isdll == true then
  return mp.INFECTED
end
return mp.CLEAN

