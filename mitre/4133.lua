-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4133.luac 

-- params : ...
-- function num : 0
if (bm.GetSignatureMatchDuration)() > 50000000 then
  return mp.CLEAN
end
local l_0_0, l_0_1, l_0_2 = nil, nil, nil
local l_0_3 = false
local l_0_4 = false
local l_0_5 = 2
local l_0_6 = 2
local l_0_7 = 30
local l_0_8 = 5
local l_0_9 = "DataRemoval"
local l_0_10 = nil
if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
  l_0_1 = (this_sigattrlog[1]).ppid
  l_0_2 = (string.lower)((this_sigattrlog[1]).utf8p2)
  l_0_0 = "rm"
  l_0_10 = l_0_9 .. "_rm_"
else
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).wp2 ~= nil then
    l_0_1 = (this_sigattrlog[2]).ppid
    l_0_2 = (string.lower)((this_sigattrlog[2]).utf8p2)
    l_0_0 = "rm"
    l_0_10 = l_0_9 .. "_rm_"
  else
    if (this_sigattrlog[3]).matched and (this_sigattrlog[3]).wp2 ~= nil then
      l_0_1 = (this_sigattrlog[3]).ppid
      l_0_2 = (string.lower)((this_sigattrlog[3]).utf8p2)
      l_0_0 = "rm"
      l_0_10 = l_0_9 .. "_rm_"
    else
      if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).wp2 ~= nil then
        l_0_1 = (this_sigattrlog[4]).ppid
        l_0_2 = (string.lower)((this_sigattrlog[4]).utf8p2)
        l_0_0 = "rm"
        l_0_10 = l_0_9 .. "_rm_"
      end
    end
  end
end
if l_0_1 == nil or l_0_2 == nil or l_0_2 == l_0_0 or l_0_2 == "" then
  return mp.CLEAN
end
local l_0_11 = l_0_10 .. "Path_" .. l_0_1
local l_0_12 = (mp.GetExecutablesFromCommandLine)(l_0_2)
for l_0_16,l_0_17 in ipairs(l_0_12) do
  if (string.find)(l_0_17, "rm ", 1, true) == nil and IsPathIncludedLinuxRansomCheck(l_0_17) then
    l_0_3 = true
    if ValidateUniqueRQThreshold(l_0_11, l_0_8, l_0_7, l_0_17, "", l_0_6) then
      l_0_4 = true
    end
  end
end
local l_0_18 = l_0_10 .. "Cmd_" .. l_0_1
if l_0_3 then
  if ValidateUniqueRQThreshold(l_0_18, l_0_8, l_0_7, l_0_2, "", l_0_5) then
    TrackPidAndTechniqueBM("BM", "T1485", "Impact_DataDestruction")
    return mp.INFECTED
  end
  if l_0_4 then
    TrackPidAndTechniqueBM("BM", "T1485", "Impact_DataDestruction")
    return mp.INFECTED
  end
end
return mp.CLEAN

