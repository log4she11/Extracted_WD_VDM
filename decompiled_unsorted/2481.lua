-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2481.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
if (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) ~= "msbuild.exe" then
  return mp.CLEAN
end
return mp.INFECTED

