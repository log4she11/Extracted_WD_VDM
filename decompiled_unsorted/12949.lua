-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12949.luac 

-- params : ...
-- function num : 0
if ((pe.get_versioninfo)()).CompanyName == "Microsoft Corporation" then
  return mp.INFECTED
end
return mp.LOWFI

