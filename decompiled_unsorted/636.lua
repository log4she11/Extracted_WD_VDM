-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/636.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((string.sub)((bm.get_imagepath)(), -18))
if l_0_0 == "browser_broker.exe" or l_0_0 == "\\runtimebroker.exe" then
  return mp.CLEAN
end
return mp.INFECTED

