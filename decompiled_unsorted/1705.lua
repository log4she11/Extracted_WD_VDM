-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1705.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)((mp.bitor)(mp.FILEPATH_QUERY_PATH, mp.FILEPATH_QUERY_FNAME), mp.FILEPATH_QUERY_LOWERCASE))
if l_0_0:find("downloads", 1, true) ~= nil or l_0_0:find("desktop", 1, true) ~= nil then
  if l_0_1:len() == 9 and ((string.sub)(l_0_1, -9) == "setup.zip" or (string.sub)(l_0_1, -9) == "setup.iso") then
    return mp.INFECTED
  end
  if (string.sub)(l_0_1, -4) == ".iso" and (l_0_1:find("youtube_adblocker-", 1, true) ~= nil or l_0_1:find("youtube_downloader-", 1, true) ~= nil or l_0_1:find("winrar-", 1, true) ~= nil or l_0_1:find("vkd-", 1, true) ~= nil or l_0_1:find("earsbassboost-", 1, true) ~= nil) then
    return mp.INFECTED
  end
end
return mp.CLEAN

