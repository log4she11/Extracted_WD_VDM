-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/18793.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.GetParentProcInfo)()
if l_0_0 == nil then
  return mp.CLEAN
end
if (string.lower)((string.sub)(l_0_0.image_path, -11)) ~= "svchost.exe" then
  return mp.CLEAN
end
if (versioning.GetLocaleIdentifier)() == 1049 then
  return mp.LOWFI
end
return mp.CLEAN

