-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21002.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 < 4096 or l_0_0 > 8192 then
  return mp.INFECTED
end
local l_0_1 = (mp.GetBruteMatchData)()
if not l_0_1.is_header then
  return mp.INFECTED
end
;
(mp.readprotection)(false)
local l_0_2 = (mp.readfile)(0, l_0_0)
local l_0_3 = (string.match)(l_0_2, "powershell.exe %-nop %-w hidden %-e ([%w%+/]+=-)")
if l_0_3 == nil then
  return mp.INFECTED
end
;
(mp.vfo_add_buffer)(l_0_3, "[PowerShellB64]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
;
(mp.set_mpattribute)("//SCPT:PowershellNopWHiddenE.Decoded")
return mp.INFECTED

