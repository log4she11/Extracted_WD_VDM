-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16501.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_imagepath)()
if l_0_0 ~= nil then
  l_0_0 = (string.lower)((string.sub)(l_0_0, -11))
  if l_0_0 == "winword.exe" then
    return mp.INFECTED
  end
end
return mp.CLEAN

