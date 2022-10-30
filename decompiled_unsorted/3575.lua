-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3575.luac 

-- params : ...
-- function num : 0
if not peattributes.isexe then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilename)()
if l_0_0 == nil then
  return mp.CLEAN
end
local l_0_1 = (string.lower)(l_0_0)
local l_0_2 = l_0_1:sub(-4)
if l_0_2 ~= ".exe" then
  return mp.CLEAN
end
if l_0_1:find("\\application data\\", 1, true) == nil and l_0_1:find("\\appdata\\", 1, true) == nil and l_0_1:find("\\local\\temp", 1, true) == nil and l_0_1:find("\\local settings\\temp", 1, true) == nil then
  return mp.CLEAN
end
local l_0_3 = (pe.get_versioninfo)()
if l_0_3 == nil then
  return mp.CLEAN
end
if l_0_3.LegalCopyright == nil then
  return mp.CLEAN
end
if (string.find)(l_0_3.LegalCopyright, "Microsoft Corp", 1, true) ~= nil or (string.find)(l_0_3.LegalCopyright, "Citrix Systems", 1, true) ~= nil or (string.find)(l_0_3.LegalCopyright, "Google Inc", 1, true) ~= nil or (string.find)(l_0_3.LegalCopyright, "Firefox and Mozilla Developers", 1, true) ~= nil or (string.find)(l_0_3.LegalCopyright, "Adobe Systems", 1, true) ~= nil or (string.find)(l_0_3.LegalCopyright, "All Alex", 1, true) ~= nil or (string.find)(l_0_3.LegalCopyright, "Maple Studio", 1, true) ~= nil or (string.find)(l_0_3.LegalCopyright, "The Chromium Authors", 1, true) ~= nil then
  return mp.CLEAN
end
local l_0_4 = (string.find)(l_0_1:reverse(), "\\", 1, true)
if l_0_4 == nil then
  return mp.CLEAN
end
local l_0_5 = #l_0_1 - l_0_4
local l_0_6 = l_0_1:sub(l_0_5 + 2)
local l_0_7 = {}
l_0_7["acrord32.exe"] = ""
l_0_7["iexplore.exe"] = ""
l_0_7["firefox.exe"] = ""
l_0_7["chrome.exe"] = ""
local l_0_8 = {}
l_0_8["explorer.exe"] = ""
l_0_8["hh.exe"] = ""
l_0_8["isuninst.exe"] = ""
l_0_8["notepad.exe"] = ""
l_0_8["regedit.exe"] = ""
l_0_8["slrundll.exe"] = ""
l_0_8["taskman.exe"] = ""
l_0_8["twunk_16.exe"] = ""
l_0_8["twunk_32.exe"] = ""
l_0_8["winhelp.exe"] = ""
l_0_8["winhlp32.exe"] = ""
l_0_8["bfsvc.exe"] = ""
l_0_8["fveupdate.exe"] = ""
l_0_8["helppane.exe"] = ""
l_0_8["write.exe"] = ""
l_0_8["splwow64.exe"] = ""
local l_0_9 = {}
l_0_9["svchost.exe"] = ""
l_0_9["rundll32.exe"] = ""
l_0_9["explorer.exe"] = ""
l_0_9["reg.exe"] = ""
l_0_9["msiexec.exe"] = ""
l_0_9["dllhost.exe"] = ""
l_0_9["cmd.exe"] = ""
l_0_9["notepad.exe"] = ""
l_0_9["regsvr32.exe"] = ""
l_0_9["userinit.exe"] = ""
l_0_9["wscript.exe"] = ""
l_0_9["regedit.exe"] = ""
l_0_9["secedit.exe"] = ""
l_0_9["calc.exe"] = ""
l_0_9["taskmgr.exe"] = ""
l_0_9["cscript.exe"] = ""
l_0_9["runonce.exe"] = ""
l_0_9["certutil.exe"] = ""
l_0_9["find.exe"] = ""
l_0_9["winver.exe"] = ""
l_0_9["hh.exe"] = ""
l_0_9["write.exe"] = ""
l_0_9["ctfmon.exe"] = ""
l_0_9["gpscript.exe"] = ""
l_0_9["net.exe"] = ""
l_0_9["powercfg.exe"] = ""
l_0_9["lsass.exe"] = ""
l_0_9["tcpsvcs.exe"] = ""
l_0_9["msfeedssync.exe"] = ""
l_0_9["taskeng.exe"] = ""
l_0_9["mshta.exe"] = ""
l_0_9["dllhst3g.exe"] = ""
l_0_9["sdiagnhost.exe"] = ""
l_0_9["werfault.exe"] = ""
l_0_9["sfc.exe"] = ""
l_0_9["upnpcont.exe"] = ""
l_0_9["wiaacmgr.exe"] = ""
l_0_9["mmc.exe"] = ""
l_0_9["mspaint.exe"] = ""
l_0_9["robocopy.exe"] = ""
l_0_9["xcopy.exe"] = ""
l_0_9["logagent.exe"] = ""
l_0_9["wextract.exe"] = ""
l_0_9["cmmon32.exe"] = ""
l_0_9["dpnsvr.exe"] = ""
l_0_9["net1.exe"] = ""
l_0_9["dplaysvr.exe"] = ""
l_0_9["schtasks.exe"] = ""
l_0_9["dvdupgrd.exe"] = ""
l_0_9["fixmapi.exe"] = ""
l_0_9["systray.exe"] = ""
l_0_9["netsh.exe"] = ""
l_0_9["mobsync.exe"] = ""
l_0_9["unregmp2.exe"] = ""
l_0_9["sethc.exe"] = ""
do
  if l_0_7[l_0_6] or l_0_8[l_0_6] or l_0_9[l_0_6] then
    local l_0_10 = l_0_1:sub(1, l_0_5)
    if l_0_10 == nil then
      return mp.CLEAN
    end
    if (l_0_10:find("\\application data\\[^\\]+$", 1, false) or l_0_10:find("\\appdata\\roaming\\[^\\]+$", 1, false)) and not l_0_10:find("microsoft", 1, true) and not l_0_10:find("windows", 1, true) and not l_0_10:find("installer", 1, true) and not l_0_10:find("citrix", 1, true) then
      (mp.set_mpattribute)("Lua:SuspiciousExeLegitNameInAppdata")
    else
      if l_0_10:find("\\local\\temp$", 1, false) or l_0_10:find("\\local settings\\temp$", 1, false) then
        (mp.set_mpattribute)("Lua:SuspiciousExeLegitNameInTemp")
      end
    end
  end
  return mp.CLEAN
end

