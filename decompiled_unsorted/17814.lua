-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17814.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 >= 86016 and l_0_0 <= 131072 and pehdr.NumberOfSections == 7 and (mp.get_mpattribute)("NID:TrojanSpy:Win32/Guildma.AB") then
  return mp.INFECTED
end
return mp.CLEAN

