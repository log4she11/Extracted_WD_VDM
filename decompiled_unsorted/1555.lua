-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1555.luac 

-- params : ...
-- function num : 0
local l_0_0 = (nri.GetConnectionString)()
local l_0_1 = (string.match)(l_0_0, "SrcIp=(.-)%.")
local l_0_2 = (string.match)(l_0_0, "DestIp=(.-)%.")
if l_0_1 == l_0_2 then
  return mp.CLEAN
end
local l_0_3 = {}
l_0_3.useragent = (nri.GetHttpRequestHeader)("User-Agent")
;
(nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), l_0_3)
return mp.INFECTED

