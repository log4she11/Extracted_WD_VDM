-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22213.luac 

-- params : ...
-- function num : 0
if isFirstTimeATActive() == false then
  return mp.CLEAN
end
local l_0_0 = 0
if (this_sigattrlog[2]).matched then
  l_0_0 = 24
else
  if (this_sigattrlog[3]).matched then
    l_0_0 = 25
  else
    if (this_sigattrlog[4]).matched then
      l_0_0 = 26
    else
      if (this_sigattrlog[5]).matched then
        l_0_0 = 27
      else
        if (this_sigattrlog[6]).matched then
          l_0_0 = 28
        else
          if (this_sigattrlog[7]).matched then
            l_0_0 = 29
          else
            if (this_sigattrlog[8]).matched then
              l_0_0 = 30
            else
              if (this_sigattrlog[9]).matched then
                l_0_0 = 31
              else
                if (this_sigattrlog[10]).matched then
                  l_0_0 = 32
                else
                  if (this_sigattrlog[11]).matched then
                    l_0_0 = 33
                  else
                    if (this_sigattrlog[12]).matched then
                      l_0_0 = 34
                    else
                      if (this_sigattrlog[13]).matched then
                        l_0_0 = 35
                      else
                        if (this_sigattrlog[14]).matched then
                          l_0_0 = 36
                        else
                          if (this_sigattrlog[15]).matched then
                            l_0_0 = 39
                          else
                            if (this_sigattrlog[16]).matched then
                              l_0_0 = 40
                            else
                              if (this_sigattrlog[17]).matched then
                                l_0_0 = 41
                              else
                                if (this_sigattrlog[18]).matched then
                                  l_0_0 = 42
                                else
                                  if (this_sigattrlog[19]).matched then
                                    l_0_0 = 43
                                  else
                                    if (this_sigattrlog[20]).matched then
                                      l_0_0 = 44
                                    else
                                      if (this_sigattrlog[21]).matched then
                                        l_0_0 = 45
                                      else
                                        if (this_sigattrlog[22]).matched then
                                          l_0_0 = 46
                                        else
                                          if (this_sigattrlog[23]).matched then
                                            l_0_0 = 47
                                          else
                                            if (this_sigattrlog[24]).matched then
                                              l_0_0 = 48
                                            else
                                              if (this_sigattrlog[25]).matched then
                                                l_0_0 = 49
                                              else
                                                if (this_sigattrlog[26]).matched then
                                                  l_0_0 = 50
                                                else
                                                  if (this_sigattrlog[27]).matched then
                                                    l_0_0 = 51
                                                  else
                                                    if (this_sigattrlog[28]).matched then
                                                      l_0_0 = 52
                                                    else
                                                      if (this_sigattrlog[29]).matched then
                                                        l_0_0 = 53
                                                      else
                                                        if (this_sigattrlog[30]).matched then
                                                          l_0_0 = 54
                                                        else
                                                          if (this_sigattrlog[31]).matched then
                                                            l_0_0 = 55
                                                          else
                                                            if (this_sigattrlog[32]).matched then
                                                              l_0_0 = 58
                                                            else
                                                              if (this_sigattrlog[33]).matched then
                                                                l_0_0 = 59
                                                              end
                                                            end
                                                          end
                                                        end
                                                      end
                                                    end
                                                  end
                                                end
                                              end
                                            end
                                          end
                                        end
                                      end
                                    end
                                  end
                                end
                              end
                            end
                          end
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
local l_0_1 = 2
local l_0_2 = -1
local l_0_3 = (sysio.RegOpenKey)("HKLM\\SYSTEM\\CurrentControlSet\\Control\\TimeZoneInformation")
if l_0_3 ~= nil then
  l_0_2 = (sysio.GetRegValueAsDword)(l_0_3, "ActiveTimeBias")
  if l_0_2 == nil then
    l_0_2 = -1
  end
end
whatEventGeneratedFileMetaData = function(l_1_0)
  -- function num : 0_0
  local l_1_2 = nil
  while 1 do
    l_1_2 = (sigattr_tail[l_1_0 - 1]).attribute
    local l_1_1 = nil
    if l_1_2 < 16389 and l_1_2 >= 16384 and ((sigattr_tail[l_1_1]).utf8p1):lower() == ((sigattr_tail[l_1_0]).utf8p1):lower() then
      return l_1_2
    end
    l_1_1 = l_1_1 - 1
    if l_1_1 == 1 then
      return false
    end
  end
  return false
end

getDetectedATReasonAndPath = function(l_2_0)
  -- function num : 0_1
  local l_2_1 = mp.SIGATTR_LOG_SZ
  local l_2_2 = nil
  local l_2_3 = getDetectedToolAttribute(l_2_0)
  for l_2_7 = l_2_1, 1, -1 do
    l_2_2 = (sigattr_tail[l_2_7]).attribute
    if l_2_2 == 16389 then
      local l_2_8 = ((sigattr_tail[l_2_7]).utf8p2):lower()
      l_2_8 = (string.sub)(l_2_8, 6)
      local l_2_9 = tonumber(l_2_8, 16)
      if l_2_9 == l_2_3 then
        local l_2_10 = ((sigattr_tail[l_2_7]).utf8p1):lower()
        return whatEventGeneratedFileMetaData(l_2_7), l_2_10
      end
    end
  end
  return false
end

local l_0_4, l_0_5 = getDetectedATReasonAndPath(l_0_0)
if l_0_4 == false then
  return mp.CLEAN
end
local l_0_6 = (bm.get_current_process_startup_info)()
local l_0_7 = ""
if l_0_6 ~= nil then
  l_0_7 = (MpCommon.QuerySessionInformation)(l_0_6.ppid, MpCommon.WTSUserName)
end
if l_0_7 == nil then
  l_0_7 = "UserNameError"
end
local l_0_8 = #l_0_7
l_0_7 = (mp.crc32)(0, l_0_7, 1, l_0_8)
if l_0_7 == nil then
  l_0_7 = "UserNameError"
end
local l_0_9 = (MpCommon.GetCurrentTimeT)()
if l_0_9 == nil or l_0_9 == 0 then
  l_0_9 = 1604188800
end
initPersistContextFTAT(2)
local l_0_10 = math_floor(l_0_0 / 100) + 1
local l_0_11 = -1
local l_0_12 = (MpCommon.GetPersistContextNoPath)("FT_STC2")
if l_0_12 ~= nil then
  l_0_11 = getDetectedToolTrackingStart(l_0_10, l_0_12)
end
getAndUpdateLastUseTimeOfTool = function(l_3_0, l_3_1, l_3_2)
  -- function num : 0_2
  local l_3_3 = 0
  local l_3_4 = 1
  local l_3_5 = 0
  local l_3_6 = {}
  if (MpCommon.GetPersistContextCountNoPath)(l_3_0) > 0 then
    l_3_6 = (MpCommon.GetPersistContextNoPath)(l_3_0)
    if type(l_3_6) == "table" then
      local l_3_7 = nil
      for l_3_11,l_3_12 in ipairs(l_3_6) do
        local l_3_13, l_3_14 = l_3_12:find("_", 1, true)
        local l_3_15, l_3_16 = l_3_12:find("_", l_3_13 + 1, true)
        l_3_7 = (string.sub)(l_3_12, 0, l_3_13 - 1)
        l_3_7 = tonumber(l_3_7)
        if l_3_7 == l_3_2 then
          l_3_3 = (string.sub)(l_3_12, l_3_13 + 1, l_3_15 - 1)
          l_3_4 = (string.sub)(l_3_12, l_3_15 + 1)
          if l_3_4 == nil or l_3_4 == "" then
            l_3_4 = 0
          end
          l_3_4 = tonumber(l_3_4)
          l_3_4 = l_3_4 + 1
          l_3_6[l_3_11] = l_3_2 .. "_" .. l_3_1 .. "_" .. l_3_4
          l_3_5 = 1
        end
      end
    end
  end
  do
    if l_3_5 == 0 then
      l_3_7 = l_3_2
      l_3_7 = l_3_7 .. "_" .. l_3_1 .. "_" .. l_3_4
      local l_3_17 = nil
      l_3_17 = table
      l_3_17 = l_3_17.insert
      l_3_17(l_3_6, l_3_7)
    end
    do
      l_3_7 = MpCommon
      l_3_7 = l_3_7.SetPersistContextNoPath
      l_3_7(l_3_0, {}, 31536000)
      l_3_7 = MpCommon
      l_3_7 = l_3_7.SetPersistContextNoPath
      l_3_7(l_3_0, l_3_6, 31536000)
      l_3_7 = tonumber
      l_3_7 = l_3_7(l_3_3)
      return l_3_7, l_3_4
    end
  end
end

local l_0_13, l_0_14 = getAndUpdateLastUseTimeOfTool("FT_" .. l_0_1 .. "_sLU-" .. l_0_7, l_0_9, l_0_0)
local l_0_15 = 0
if l_0_13 ~= 0 and l_0_13 ~= nil then
  l_0_15 = l_0_9 - l_0_13
end
local l_0_16, l_0_17 = getAndUpdateLastUseTimeOfTool("FT_" .. l_0_1 .. "_sLC", l_0_9, l_0_0)
getAndUpdateGeneralToolsUsage = function(l_4_0)
  -- function num : 0_3 , upvalues : l_0_9
  local l_4_1 = 0
  local l_4_2 = 0
  if (MpCommon.GetPersistContextCountNoPath)(l_4_0) == 0 then
    local l_4_3 = {}
    l_4_3[1] = l_0_9
    l_4_3[2] = l_4_2
    ;
    (MpCommon.SetPersistContextNoPath)(l_4_0, l_4_3, 31536000)
  else
    do
      do
        local l_4_4 = (MpCommon.GetPersistContextNoPath)(l_4_0)
        if type(l_4_4) == "table" then
          l_4_1 = tonumber(l_4_4[1])
          if l_4_1 == nil then
            l_4_1 = 0
          end
          l_4_2 = tonumber(l_4_4[2])
          if l_4_2 == nil then
            l_4_2 = 0
          end
          if l_4_2 >= 1000000 then
            l_4_2 = 0
          else
            l_4_2 = l_4_2 + 1
          end
          l_4_4[1] = l_0_9
          l_4_4[2] = l_4_2
          ;
          (MpCommon.SetPersistContextNoPath)(l_4_0, {}, 31536000)
          ;
          (MpCommon.SetPersistContextNoPath)(l_4_0, l_4_4, 31536000)
        end
        return l_4_1, l_4_2
      end
    end
  end
end

local l_0_18, l_0_19 = getAndUpdateGeneralToolsUsage("FT_" .. l_0_1 .. "_gU-" .. l_0_7)
local l_0_20 = 0
if l_0_18 ~= nil and l_0_18 ~= 0 then
  l_0_20 = l_0_9 - l_0_18
end
local l_0_21, l_0_22 = getAndUpdateGeneralToolsUsage("FT_" .. l_0_1 .. "_gC")
local l_0_23 = ""
l_0_23 = createToolsList("FT_" .. l_0_1 .. "_sLU-" .. l_0_7)
local l_0_24 = ""
l_0_24 = createToolsList("FT_" .. l_0_1 .. "_sLC")
local l_0_25 = l_0_0 .. "_" .. l_0_1 .. "_" .. l_0_4 .. "_" .. l_0_11 .. "_" .. l_0_9 .. "_" .. l_0_13 .. "_" .. l_0_15 .. "_" .. l_0_18 .. "_" .. l_0_19 .. "_" .. l_0_16 .. "_" .. l_0_21 .. "_" .. l_0_22 .. "_" .. l_0_23 .. "_" .. l_0_24 .. "_" .. l_0_20 .. "_" .. l_0_14 .. "_" .. l_0_17 .. "_" .. l_0_2
;
(bm.add_related_file)(l_0_5)
;
(bm.add_related_string)("FirstTime", l_0_25, bm.RelatedStringBMReport)
if l_0_15 < 86400 and l_0_15 > 0 then
  return mp.CLEAN
end
local l_0_26, l_0_27 = (bm.get_process_relationships)()
for l_0_31,l_0_32 in ipairs(l_0_27) do
  local l_0_33 = (mp.bitand)(l_0_32.reason_ex, 1)
  if l_0_32.ppid ~= nil and l_0_32.image_path ~= nil and l_0_33 == 1 then
    (bm.add_related_file)(l_0_32.image_path)
  end
end
add_parents()
reportSessionInformation()
return mp.INFECTED

