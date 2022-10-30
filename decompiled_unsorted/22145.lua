-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22145.luac 

-- params : ...
-- function num : 0
if (versioning.GetTestMode)() ~= 65000 and (versioning.GetCloudBlockLevel)() < 4 and (MpCommon.IsSampled)(10000, true, true, true) == false then
  return mp.CLEAN
end
local l_0_0 = (this_sigattrlog[5]).utf8p1
local l_0_1 = 16
if not l_0_0:match("[%w%-%.]*%.[%w%-]+%.[%w]+") then
  return mp.CLEAN
end
local l_0_2 = lastIndexOf(l_0_0, ".", #l_0_0 - 7)
local l_0_3 = (string.lower)((string.sub)(l_0_0, l_0_2 + 1))
if not l_0_3 then
  return mp.CLEAN
end
local l_0_4 = "NRI-DNS-TL-TXT"
local l_0_5 = (string.format)("%s_%s_%s", l_0_4, l_0_3, l_0_1)
local l_0_6 = l_0_3 .. "_" .. l_0_1
local l_0_7 = (MpCommon.GetPersistContextCountNoPath)(l_0_5)
if l_0_7 and l_0_7 > 0 then
  return mp.CLEAN
end
local l_0_8, l_0_9 = (mp.CheckUrl)(l_0_3)
local l_0_10 = (this_sigattrlog[3]).np1
if not l_0_10 then
  return mp.CLEAN
end
l_0_10 = (mp.bitand)(l_0_10, 65535)
if l_0_8 == 1 and l_0_9 == 1 then
  return mp.CLEAN
end
local l_0_11 = (string.sub)(l_0_0, 1, l_0_2 - 1)
if (versioning.GetTestMode)() ~= 65000 and (l_0_11 <= 0 or computeStringScores(l_0_11) <= 1) and R15_PC119 <= 3 and l_0_2 - 1 <= 5 then
  return mp.CLEAN
end
local l_0_12 = (MpCommon.GetPersistContextCountNoPath)(l_0_6)
if l_0_12 < 5 then
  local l_0_13 = (MpCommon.QueryPersistContextNoPath)(l_0_6, R15_PC119)
  -- DECOMPILER ERROR at PC140: Overwrote pending register: R15 in 'AssignReg'

  if not l_0_13 then
    local l_0_14 = computeReponseLength(R15_PC119)
    -- DECOMPILER ERROR at PC142: Overwrote pending register: R15 in 'AssignReg'

    -- DECOMPILER ERROR at PC143: Overwrote pending register: R15 in 'AssignReg'

    R15_PC119(l_0_6, l_0_11, 3600)
    -- DECOMPILER ERROR at PC148: Overwrote pending register: R15 in 'AssignReg'

    -- DECOMPILER ERROR at PC149: Overwrote pending register: R15 in 'AssignReg'

    R15_PC119(l_0_6 .. "T", (MpCommon.GetCurrentTimeT)() .. "_" .. #l_0_11 .. "_" .. l_0_14, 3600)
    l_0_12 = l_0_12 + 1
  end
end
do
  if l_0_12 >= 5 then
    local l_0_15 = (MpCommon.GetPersistContextNoPath)(l_0_6)
    -- DECOMPILER ERROR at PC171: Overwrote pending register: R15 in 'AssignReg'

    local l_0_16, l_0_17 = extractCommonSuffix(R15_PC119, 0), R15_PC119
    local l_0_18 = computeDataLength(l_0_15, #l_0_17)
    local l_0_19 = #l_0_17 + l_0_18
    if l_0_19 < 15 or l_0_18 < 10 then
      (mp.changedetectionname)(805306728)
    else
      local l_0_20 = (this_sigattrlog[2]).utf8p1
      local l_0_21 = nil
      if l_0_19 > 500 then
        l_0_21 = routeBasedOnProcess(l_0_20, 4)
      else
        l_0_21 = routeBasedOnProcess(l_0_20, 2)
      end
      ;
      (mp.changedetectionname)(l_0_21)
    end
    do
      do
        if isTrustedDomain(l_0_3, "DNS-sinkhole") then
          (MpCommon.AppendPersistContextNoPath)(l_0_5, "1", 3600)
          return mp.CLEAN
        end
        if not (MpCommon.QueryPersistContextNoPath)(l_0_4, l_0_6) then
          (MpCommon.AppendPersistContextNoPath)(l_0_4, l_0_6, 60)
        end
        do return mp.INFECTED end
        return mp.CLEAN
      end
    end
  end
end

