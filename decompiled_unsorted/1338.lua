-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1338.luac 

-- params : ...
-- function num : 0
local l_0_0 = (nri.GetHttpCommand)()
local l_0_1 = "verb_" .. tostring(l_0_0)
if l_0_0 == nri.HTTP_GET then
  l_0_1 = "GET"
else
  if l_0_0 == nri.HTTP_POST then
    l_0_1 = "POST"
  end
end
local l_0_2 = {}
l_0_2.verb = l_0_1
l_0_2.useragent = (nri.GetHttpRequestHeader)("User-Agent")
;
(nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), (mp.bitor)(nri.Telemetry_QUERY, nri.Telemetry_REFERER)), l_0_2)
return mp.INFECTED

