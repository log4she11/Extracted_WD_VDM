-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2489.luac 

-- params : ...
-- function num : 0
local l_0_0 = false
for l_0_4,l_0_5 in pairs((Remediation.Threat).Resources) do
  if l_0_5.Schema == "file" and (string.match)((Remediation.Threat).Name, "BrobanLaw") then
    l_0_0 = true
    break
  end
end
do
  if l_0_0 then
    local l_0_6 = (sysio.RegOpenKey)("HKLM\\SOFTWARE\\AXSPH")
    if l_0_6 then
      (sysio.DeleteRegKey)(l_0_6, nil)
    end
    local l_0_7 = (sysio.RegOpenKey)("HKCU\\SOFTWARE\\fgiusji")
    if l_0_7 then
      (sysio.DeleteRegKey)(l_0_7, nil)
    end
  end
end

