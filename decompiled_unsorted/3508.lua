-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3508.luac 

-- params : ...
-- function num : 0
local l_0_0 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_DEBUG]).RVA
local l_0_1 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_DEBUG]).Size
local l_0_2 = (MpCommon.GetCurrentTimeT)()
if l_0_0 ~= 0 and l_0_1 ~= 0 then
  local l_0_3 = 0
  ;
  (mp.readprotection)(false)
  while l_0_3 < l_0_1 do
    if (mp.readu_u32)((pe.mmap_rva)(l_0_0 + l_0_3 + 12, 4), 1) == 16 then
      return mp.CLEAN
    end
    l_0_3 = l_0_3 + 28
  end
  local l_0_4 = (mp.readu_u32)((pe.mmap_rva)(l_0_0 + 4, 4), 1)
  ;
  (mp.readprotection)(true)
  if pehdr.TimeDateStamp ~= l_0_4 then
    (mp.set_mpattribute)("LUA:PEAnomaly_DifferentPEandDebugDirTimeStamp")
  end
  if l_0_4 ~= 0 then
    local l_0_5 = l_0_2 - l_0_4
    if l_0_5 <= 2592000 then
      (mp.set_mpattribute)("LUA:PEAnomaly_DebugTimeStampLastOneMonth")
    end
    if l_0_5 > 2592000 and l_0_5 <= 15638400 then
      (mp.set_mpattribute)("LUA:PEAnomaly_DebugTimeStampLastSixMonth")
    end
    if l_0_5 > 15638400 and l_0_5 <= 31536000 then
      (mp.set_mpattribute)("LUA:PEAnomaly_DebugTimeStampLastOneYear")
    end
    if l_0_5 > 31536000 and l_0_5 <= 94608000 then
      (mp.set_mpattribute)("LUA:PEAnomaly_DebugTimeStampLastThreeYear")
    end
    if l_0_5 > 94608000 and l_0_5 <= 157766400 then
      (mp.set_mpattribute)("LUA:PEAnomaly_DebugTimeStampLastFiveYear")
    end
    if l_0_5 > 157766400 and l_0_5 <= 315532800 then
      (mp.set_mpattribute)("LUA:PEAnomaly_DebugTimeStampLastTenYear")
    end
    if l_0_5 > 315532800 then
      (mp.set_mpattribute)("LUA:PEAnomaly_DebugTimeStampLastOlderThanTenYear")
    end
  else
    do
      do
        ;
        (mp.set_mpattribute)("LUA:PEAnomaly_NullDebugTimeStamp")
        if pehdr.TimeDateStamp ~= 0 then
          if pehdr.TimeDateStamp < l_0_2 then
            local l_0_6 = l_0_2 - pehdr.TimeDateStamp
            if l_0_6 <= 2592000 then
              (mp.set_mpattribute)("LUA:PEAnomaly_TimeStampLastOneMonth")
            end
            if l_0_6 > 2592000 and l_0_6 <= 15638400 then
              (mp.set_mpattribute)("LUA:PEAnomaly_TimeStampLastSixMonth")
            end
            if l_0_6 > 15638400 and l_0_6 <= 31536000 then
              (mp.set_mpattribute)("LUA:PEAnomaly_TimeStampLastOneYear")
            end
            if l_0_6 > 31536000 and l_0_6 <= 94608000 then
              (mp.set_mpattribute)("LUA:PEAnomaly_TimeStampLastThreeYear")
            end
            if l_0_6 > 94608000 and l_0_6 <= 157766400 then
              (mp.set_mpattribute)("LUA:PEAnomaly_TimeStampLastFiveYear")
            end
            if l_0_6 > 157766400 and l_0_6 <= 315532800 then
              (mp.set_mpattribute)("LUA:PEAnomaly_TimeStampLastTenYear")
            end
            if l_0_6 > 315532800 then
              (mp.set_mpattribute)("LUA:PEAnomaly_TimeStampLastOlderThanTenYear")
            end
          else
            do
              ;
              (mp.set_mpattribute)("LUA:PEAnomaly_TimeStampHigherThanCurrentDateOrInvalid")
              ;
              (mp.set_mpattribute)("LUA:PEAnomaly_NullTimeDateStamp")
              return mp.CLEAN
            end
          end
        end
      end
    end
  end
end

