-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17308.luac 

-- params : ...
-- function num : 0
if peattributes.packed and (mp.get_mpattribute)("SIGATTR:deepemu") and (mp.get_mpattribute)("SIGATTR:VirTool:Win32/Obfuscator.QG") then
  return mp.SUSPICIOUS
end
return mp.CLEAN

