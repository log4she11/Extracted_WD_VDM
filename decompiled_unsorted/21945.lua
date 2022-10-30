-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21945.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 1200000 or l_0_0 < 4000 then
  return mp.CLEAN
end
local l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if l_0_1:find("kali", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("\\data\\exploits\\", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("metasploit", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("program files", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("oxy", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("mtk-su", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("cve-20", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("supersu", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("strace", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("unlock", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("ctssecurity", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("\\so_rules\\precompiled\\", 1, true) then
  return mp.CLEAN
end
if l_0_1:find("\\bin\\sys\\", 1, true) then
  return mp.CLEAN
end
local l_0_2 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
local l_0_3 = ((string.sub)(l_0_2, -5)):match("(%.%w+)$")
local l_0_4 = {}
l_0_4[".ko"] = ""
l_0_4[".dwo"] = ""
l_0_4[".rc"] = ""
if l_0_4[l_0_3] then
  return mp.CLEAN
end
return mp.INFECTED

