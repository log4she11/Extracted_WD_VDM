-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21167.luac 

-- params : ...
-- function num : 0
if not peattributes.isdll then
  return mp.CLEAN
end
local l_0_0 = (mp.GetCertificateInfo)()
for l_0_4,l_0_5 in pairs(l_0_0) do
  if l_0_5.Signers ~= nil then
    return mp.CLEAN
  end
end
local l_0_6 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILEPATH)
if (string.find)(l_0_6:lower(), "microsoft.net\\framework.-\\v[0-9.].+\\temporary asp.net files\\") or (string.find)(l_0_6:lower(), "microsoft\\exchange server\\v[0-9].+\\clientaccess\\owa\\bin") or (string.find)(l_0_6:lower(), "microsoft\\exchange server\\v[0-9].+\\frontend\\httpproxy\\owa\\bin") then
  return mp.INFECTED
end
return mp.CLEAN

