-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20624.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k7_k8.4B8B") or (mp.get_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k7_k8.648B") or (mp.get_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k7_k8.6E80") then
  return mp.INFECTED
end
if (hstrlog[27]).matched or (hstrlog[28]).matched then
  (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k7_k8.4B8B")
else
  ;
  (mp.set_mpattribute)("HSTR:VirTool:Win32/Obfuscator.PN!k7_k8.2CCB")
end
return mp.INFECTED

