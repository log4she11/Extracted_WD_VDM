-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2052.luac 

-- params : ...
-- function num : 0
if (Remediation.Threat).Active then
  Infrastructure_RemoveDefenderDAVASPolicyKey()
  Infrastructure_RemoveDefenderDAVASPrefKey()
end

