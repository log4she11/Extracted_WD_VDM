-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1824.luac 

-- params : ...
-- function num : 0
if (mp.IsHipsRuleEnabled)("c1db55ab-c21a-4637-bb3f-a12568109d35") ~= true then
  return mp.CLEAN
end
local l_0_0 = mp.SIGATTR_LOG_SZ
local l_0_1 = {}
local l_0_2 = {}
local l_0_3 = {}
local l_0_4 = {}
local l_0_5 = 0
for l_0_9 = 1, l_0_0 do
  local l_0_10 = (sigattr_tail[l_0_9]).attribute
  if l_0_10 == 16389 and (sigattr_tail[l_0_9]).utf8p2 == "ATTR_c09458eb" then
    local l_0_11 = ((sigattr_tail[l_0_9]).utf8p1):lower()
    l_0_4[(mp.crc32)(0, l_0_11, 1, #l_0_11)] = l_0_9
  end
end
for l_0_15 = 1, l_0_0 do
  if (sigattr_tail[l_0_15]).attribute == 16385 and (sigattr_tail[l_0_15]).utf8p2 ~= 0 and (sigattr_tail[l_0_15]).utf8p2 ~= "" then
    local l_0_16 = ((sigattr_tail[l_0_15]).utf8p1):lower()
    local l_0_17 = ((sigattr_tail[l_0_15]).utf8p2):lower()
    local l_0_18 = {}
    local l_0_19 = (mp.crc32)(0, l_0_16, 1, #l_0_16)
    if l_0_1[l_0_19] == nil and l_0_4[l_0_19] ~= nil then
      l_0_1[l_0_19] = l_0_15
      for l_0_23,l_0_24 in (string.gmatch)(l_0_17, "(%w+):(%w+)") do
        l_0_18[l_0_23] = l_0_24
      end
      local l_0_25 = tonumber(l_0_18.firstoff)
      local l_0_26 = tonumber(l_0_18.biggestoff)
      local l_0_27 = tonumber(l_0_18.totalsizewrite)
      local l_0_28 = tonumber(l_0_18.numwrites)
      do
        if not (string.find)(l_0_16, "\\[^\\]*$") then
          local l_0_29, l_0_30, l_0_31 = l_0_25 == nil or l_0_26 == nil or l_0_27 == nil or l_0_28 == nil or l_0_27 ~= (sysio.GetFileSize)(l_0_16) or 0
        end
        -- DECOMPILER ERROR at PC135: Confused about usage of register: R18 in 'UnsetPending'

        local l_0_32 = nil
        if (string.find)(l_0_16, ".", l_0_29, true) ~= nil then
          local l_0_33 = nil
          local l_0_34 = (string.sub)(l_0_16, l_0_32 + 1, (string.find)(l_0_16, ".", l_0_29, true) - 1)
          if l_0_2[l_0_34] == nil or l_0_3[l_0_16:match("%.[^%.]+$")] == nil then
            l_0_2[l_0_34] = l_0_15
            l_0_3[l_0_16:match("%.[^%.]+$")] = l_0_15
            l_0_5 = l_0_5 + 1
            if l_0_5 >= 5 then
              reportTimingData()
              return mp.INFECTED
            end
          end
        end
        do
          -- DECOMPILER ERROR at PC165: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC165: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC165: LeaveBlock: unexpected jumping out IF_STMT

          -- DECOMPILER ERROR at PC165: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC165: LeaveBlock: unexpected jumping out IF_STMT

        end
      end
    end
  end
end
return mp.CLEAN

