-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22151.luac 

-- params : ...
-- function num : 0
local l_0_0 = (bm.get_connection_string)()
if l_0_0:find("DestIp=85.234.158.245;", 1, true) or l_0_0:find("DestIp=178.33.188.140;", 1, true) or l_0_0:find("DestIp=5.135.233.16;", 1, true) or l_0_0:find("DestIp=46.101.12.160;", 1, true) or l_0_0:find("DestIp=91.121.109.199;", 1, true) or l_0_0:find("DestIp=87.117.255.171;", 1, true) or l_0_0:find("DestIp=173.236.185.69;", 1, true) or l_0_0:find("DestIp=178.211.41.252;", 1, true) or l_0_0:find("DestIp=178.63.149.151;", 1, true) or l_0_0:find("DestIp=185.29.8.183;", 1, true) or l_0_0:find("DestIp=188.72.227.35;", 1, true) or l_0_0:find("DestIp=193.169.244.64;", 1, true) or l_0_0:find("DestIp=195.16.89.60;", 1, true) or l_0_0:find("DestIp=2.133.128.110;", 1, true) or l_0_0:find("DestIp=200.63.43.100;", 1, true) or l_0_0:find("DestIp=37.48.87.51;", 1, true) or l_0_0:find("DestIp=46.182.105.80;", 1, true) or l_0_0:find("DestIp=46.22.211.3;", 1, true) or l_0_0:find("DestIp=5.45.118.127;", 1, true) or l_0_0:find("DestIp=5.45.179.38;", 1, true) or l_0_0:find("DestIp=50.7.252.52;", 1, true) or l_0_0:find("DestIp=62.113.227.4;", 1, true) or l_0_0:find("DestIp=62.149.166.33;", 1, true) or l_0_0:find("DestIp=162.13.85.250;", 1, true) or l_0_0:find("DestIp=81.2.199.97;", 1, true) or l_0_0:find("DestIp=78.47.2.7;", 1, true) or l_0_0:find("DestIp=87.236.211.139;", 1, true) or l_0_0:find("DestIp=88.150.208.216;", 1, true) or l_0_0:find("DestIp=91.209.77.45;", 1, true) or l_0_0:find("DestIp=91.210.172.111;", 1, true) or l_0_0:find("DestIp=91.211.119.196;", 1, true) or l_0_0:find("DestIp=91.215.155.147;", 1, true) or l_0_0:find("DestIp=95.57.120.111;", 1, true) or l_0_0:find("DestIp=111.67.19.1;", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN

