-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2495.luac 

-- params : ...
-- function num : 0
if (mp.GetResmgrBasePlugin)() ~= "AutorunInf" then
  return mp.CLEAN
end
if peattributes.isexe == false then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_UNKNOWN or (mp.bitand)((mp.get_contextdata)(mp.CONTEXT_DATA_DEVICE_CHARACTERISTICS), 264193) ~= 264193 then
  return mp.CLEAN
end
return mp.INFECTED

