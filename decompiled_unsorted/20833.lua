-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20833.luac 

-- params : ...
-- function num : 0
local l_0_0 = (macho.GetSegment)("LC_SYMTAB", 0, 21)
if ((machoLC.__TEXT).__cstring).Size <= 1535 and ((machoLC.__TEXT).__text).Size <= 767 and (string.byte)(l_0_0, 13) == 14 and (string.byte)(l_0_0, 21) == 240 and (mp.getfilesize)() < 10000 and machohdr.FileType == 6 and machohdr.NumberOfCommands <= 15 then
  return mp.INFECTED
end
return mp.CLEAN

