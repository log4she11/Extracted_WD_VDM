-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17813.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 589824 and l_0_0 < 786432 and ((mp.get_mpattribute)("TEL:Trojan:Win32/Qakbot.E!sl1") or (mp.get_mpattribute)("TEL:Trojan:Win32/Qakbot.E!sl2")) then
  return mp.INFECTED
end
return mp.CLEAN

