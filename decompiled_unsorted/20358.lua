-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20358.luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
l_0_0.server = (nri.GetHttpRequestHeader)("Server")
l_0_0.accept = (nri.GetHttpRequestHeader)("Accept")
l_0_0["accept-encoding"] = (nri.GetHttpRequestHeader)("Accept-Encoding")
l_0_0.connection = (nri.GetHttpRequestHeader)("Connection")
;
(nri.AddTelemetry)((mp.bitor)((mp.bitor)(nri.Telemetry_HOSTNAME, nri.Telemetry_PATH), nri.Telemetry_QUERY), l_0_0)
return mp.INFECTED

