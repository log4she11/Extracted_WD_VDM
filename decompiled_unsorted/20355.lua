-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20355.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.lower)((string.match)(l_0_0.image_path, "\\([^\\]+)$")) ~= "razerinstaller.exe" then
  return mp.CLEAN
end
local l_0_1 = (mp.GetProcessCommandLine)(l_0_0.ppid)
if l_0_1 == "" or l_0_1 == nil then
  return mp.CLEAN
end
if (string.find)((string.lower)(l_0_1), "razerinstaller%.exe[^/]+/showdevice$") == nil then
  return mp.CLEAN
end
return mp.INFECTED

