-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/958.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetHSTRCallerId)()
if l_0_0 == nil then
  return mp.CLEAN
end
if mp.HSTR_CALLER_SMS == l_0_0 then
  if (mp.GetSMSProcArchitecture)() == nil then
    return mp.CLEAN
  end
  if (mp.GetSMSMemRanges)() == nil then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN

