-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3259.luac 

-- params : ...
-- function num : 0
if peattributes.isdll or peattributes.isdriver or peattributes.isdamaged then
  return mp.CLEAN
end
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) ~= mp.SCANREASON_ONOPEN then
  return mp.CLEAN
end
if not (mp.get_contextdata)(mp.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT) then
  return mp.CLEAN
end
local l_0_0 = (string.lower)((mp.get_contextdata)(mp.CONTEXT_DATA_PROCESSNAME))
if l_0_0 ~= "msconfig.exe" then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
local l_0_2 = {}
l_0_2["cmd.exe"] = true
l_0_2["useraccountcontrolsettings.exe"] = true
l_0_2["taskmgr.exe"] = true
l_0_2["control.exe"] = true
l_0_2["mmc.exe"] = true
l_0_2["msinfo32.exe"] = true
l_0_2["winver.exe"] = true
l_0_2["werfault.exe"] = true
l_0_2["eventvwr.exe"] = true
l_0_2["msra.exe"] = true
l_0_2["rstrui.exe"] = true
l_0_2["sgtool.exe"] = true
l_0_2["resmon.exe"] = true
l_0_2["perfmon.exe"] = true
l_0_2["regedit32.exe"] = true
if l_0_2[l_0_1] == true then
  return mp.CLEAN
end
return mp.INFECTED

