-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19749.luac 

-- params : ...
-- function num : 0
if (string.lower)(((pe.get_versioninfo)()).OriginalFilename) == "ultraviewer_service.exe" then
  return mp.CLEAN
end
if peattributes.is_process then
  return mp.CLEAN
end
local l_0_0 = (mp.GetCertificateInfo)()
for l_0_4,l_0_5 in pairs(l_0_0) do
  if l_0_5.Signers ~= nil then
    return mp.CLEAN
  end
end
return mp.INFECTED

