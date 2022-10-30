-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3473.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((mp.getfilename)())
local l_0_1, l_0_2 = l_0_0:match("(.+\\)([^\\]+)$")
if l_0_2 == nil then
  return mp.CLEAN
end
if l_0_2 == "svchost.exe" or l_0_2 == "csrss.exe" or l_0_2 == "rundll32.exe" or l_0_2 == "lsass.exe" or l_0_2 == "services.exe" or l_0_2 == "cryptbase.dll" or l_0_2 == "migsetup.exe" then
  local l_0_3 = (string.sub)(l_0_1, -18)
  if l_0_3 ~= "\\windows\\system32\\" and l_0_3 ~= "\\windows\\syswow64\\" and l_0_1:find("\\windows\\winsxs\\", 1, true) == nil and (string.sub)(l_0_1, -19) ~= "\\system32\\dllcache\\" and (string.sub)(l_0_1, -38) ~= "\\malwarebytes\' anti-malware\\chameleon\\" and (string.sub)(l_0_1, -13) ~= "\\system32\\pw\\" and (string.sub)(l_0_1, -15) ~= "\\system32\\1052\\" and (string.sub)(l_0_1, -6) ~= "\\i386\\" and (string.sub)(l_0_1, -16) ~= "\\winnt\\system32\\" and (string.sub)(l_0_1, -12) ~= "\\winnt\\i386\\" and l_0_1:find("\\$ntservicepackuninstall$\\", 1, true) == nil and l_0_1:find("\\Installer\\$PatchCache$\\", 1, true) == nil and l_0_1:find("\\windows\\$ntuninstall", 1, true) == nil and l_0_1:find("\\windows\\$hf_mig$\\", 1, true) == nil and l_0_1:find("\\softwaredistribution\\download\\", 1, true) == nil and l_0_1:find("symbols\\", 1, true) == nil and l_0_1:find("\\debuggers\\", 1, true) == nil and l_0_1:find("\\debugger\\", 1, true) == nil and l_0_1:find("\\hotfixes\\", 1, true) == nil and l_0_1:find("\\symbol\\", 1, true) == nil and l_0_1:find("\\device\\mup", 1, true) == nil and (string.sub)(l_0_1, -17) ~= "\\system32\\migwiz\\" then
    local l_0_4 = (mp.get_parent_filehandle)()
    local l_0_5, l_0_6 = pcall(mp.get_filesize_by_handle, l_0_4)
    if l_0_5 == false then
      (mp.set_mpattribute)("Lua:SuspiciousPathFilename.A")
    end
  end
end
do
  return mp.CLEAN
end

