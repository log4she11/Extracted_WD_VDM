-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3048.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.enum_mpattributesubstring)("TEL:MpCloudSuspicious_")
if #l_0_0 == 0 or l_0_0 == nil then
  return mp.CLEAN
end
for l_0_4,l_0_5 in ipairs(l_0_0) do
  local l_0_6, l_0_7, l_0_8, l_0_9, l_0_10 = (string.match)(l_0_5, "MpCloudSuspicious_(%d*)_(%d*)_(%d*)_(%d*)_(%d*)")
  if l_0_6 ~= nil and l_0_7 ~= nil and l_0_8 ~= nil and l_0_9 ~= nil and l_0_10 ~= nil then
    l_0_6 = tonumber(l_0_6)
    l_0_7 = tonumber(l_0_7)
    l_0_8 = tonumber(l_0_8)
    l_0_9 = tonumber(l_0_9)
    l_0_10 = tonumber(l_0_10)
    ;
    (mp.set_mpattributeex)("Cloud:EnsembleV1_Clean:Probability", l_0_6)
    ;
    (mp.set_mpattributeex)("Cloud:EnsembleV1_Malware:Probability", l_0_7)
    ;
    (mp.set_mpattributeex)("Cloud:FileInfo:Age", l_0_8)
    ;
    (mp.set_mpattributeex)("Cloud:FileInfo:Prevalence", l_0_9)
    ;
    (mp.set_mpattributeex)("Cloud:FileInfo:Rtp60", l_0_10)
    return mp.INFECTED
  end
end
return mp.CLEAN

