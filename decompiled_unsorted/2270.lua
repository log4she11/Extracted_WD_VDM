-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2270.luac 

-- params : ...
-- function num : 0
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE and (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME)) == "lsass.exe" then
  return mp.INFECTED
end
return mp.CLEAN

