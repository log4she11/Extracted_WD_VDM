-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16399.luac 

-- params : ...
-- function num : 0
if ((pe.get_versioninfo)()).InternalName == "Bluthmon.exe" and ((pe.get_versioninfo)()).CompanyName == "Mototech.co" then
  return mp.INFECTED
end
return mp.LOWFI

