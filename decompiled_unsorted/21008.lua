-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21008.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC8: Overwrote pending register: R0 in 'AssignReg'

local l_0_0 = nil
if l_0_0 == nil or (string.len)(l_0_0) == 0 then
  l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH))
  if l_0_0 == nil or (string.len)(l_0_0) == 0 then
    return mp.CLEAN
  end
end
if (string.find)(l_0_0, "^.:\\windows\\ccmcache\\") then
  return mp.CLEAN
end
local l_0_1 = (string.match)(l_0_0, "^.:\\(program files[^\\]*)\\tanium\\tanium client\\")
if l_0_1 == "program files" then
  return mp.CLEAN
end
if l_0_1 == "program files (x86)" then
  return mp.CLEAN
end
return mp.INFECTED

