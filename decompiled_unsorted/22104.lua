-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22104.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1, l_0_2 = ((bm.get_connection_string)()):find("DestIp=(.-;)")
if l_0_2 == nil then
  return mp.CLEAN
end
l_0_2 = ";" .. l_0_2
local l_0_3 = ";43.250.175.90;171.92.208.90;122.141.5.59;58.221.62.49;115.201.29.82;123.13.42.88;61.160.223.71;63.141.229.7;199.83.94.87;103.24.92.153;61.147.110.52;221.15.189.51;219.235.1.150;219.235.4.247;27.220.41.238;121.41.77.138;91.236.75.134;43.240.12.132;115.23.172.31;115.28.15.63;120.24.228.240;173.44.210.235;216.99.150.227;61.147.103.217;222.169.17.201;120.24.78.12;222.186.34.196;125.90.88.119;23.88.177.119;104.149.17.186 ;222.186.58.185;119.90.133.181;221.194.44.170;61.160.239.17;113.84.153.159;98.126.67.114;61.160.232.135;108.61.181.125;223.156.48.12;182.92.237.102;117.21.176.102;119.29.63.41;182.163.226.99;104.149.197.80;119.148.160.78;219.133.148.7;203.156.196.53;119.164.255.46;108.171.245.42;221.229.166.252;104.233.142.252;123.254.109.248;183.106.120.246;174.128.255.239;174.128.255.232;174.128.255.231;174.128.255.227;106.186.124.221;218.244.157.181;118.193.131.176;139.201.126.168;118.193.247.147;119.134.251.140;118.193.160.114;122.10.9.31;59.33.136.6;1.93.62.191;1.93.10.146;4.17.95.104;122.114.57.86;108.171.244.250;198.13.98.90;118.244.154.21;39.109.0.156;59.224.235.234;1.93.18.88;198.13.108.229;182.92.224.212;222.186.30.110;113.12.203.67;123.254.105.11;61.191.190.35;117.21.173.28;101.18.30.176;1.93.40.245;222.186.56.32;27.197.137.18;61.136.93.8;49.113.74.24;118.244.228.39;222.186.34.148;118.193.131.136;113.12.203.67;"
if l_0_3:find(l_0_2, 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

