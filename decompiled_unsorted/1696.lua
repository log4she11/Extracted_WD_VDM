-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1696.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 == nil or (string.len)(l_0_0) < 1 then
  return mp.CLEAN
end
if (string.find)(l_0_0, "\\explorer.exe", 1, true) or (string.find)(l_0_0, "\\userprofilemanager.exe", 1, true) or (string.find)(l_0_0, "\\ir_agent.exe", 1, true) or (string.find)(l_0_0, "\\chrome.exe", 1, true) or (string.find)(l_0_0, "\\brhostsvr.exe", 1, true) or (string.find)(l_0_0, "\\dllhost.exe", 1, true) or (string.find)(l_0_0, "\\powershell.exe", 1, true) or (string.find)(l_0_0, "\\360se.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED

