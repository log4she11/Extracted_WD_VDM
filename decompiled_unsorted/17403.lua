-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17403.luac 

-- params : ...
-- function num : 0
if (mp.ispackedwith)("AutoIt_+") or (mp.get_mpattributesubstring)("Win32/AutoIt") or (mp.get_mpattributesubstring)("PESTATIC:cleanstub_autoitv") then
  return mp.INFECTED
end
return mp.CLEAN

