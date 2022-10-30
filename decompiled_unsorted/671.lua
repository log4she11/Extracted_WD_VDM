-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/671.luac 

-- params : ...
-- function num : 0
getSystemDriverPath = function()
  -- function num : 0_0
  local l_1_0 = (MpCommon.ExpandEnvironmentVariables)("%SystemRoot%")
  if not l_1_0 then
    return nil
  end
  return l_1_0 .. "\\System32\\drivers\\"
end

getDriverName = function(l_2_0)
  -- function num : 0_1
  local l_2_1, l_2_2, l_2_11, l_2_12, l_2_13 = nil, nil
  for l_2_6,l_2_7 in pairs(l_2_0.Resources) do
    local l_2_3, l_2_4 = nil
    -- DECOMPILER ERROR at PC4: Confused about usage of register: R7 in 'UnsetPending'

    if R7_PC4.Schema == "file" and getSystemDriverPath() and (string.find)((string.lower)(R7_PC4.Path), (getSystemDriverPath()):lower(), 1, true) then
      local l_2_10 = nil
      if (string.match)((string.lower)(R7_PC4.Path), "\\([^\\]+)%.sys") then
        do
          do
            l_2_4 = (string.match)((string.lower)(R7_PC4.Path), "\\([^\\]+)%.sys")
            l_2_3 = l_2_10
            do break end
            -- DECOMPILER ERROR at PC35: LeaveBlock: unexpected jumping out DO_STMT

            -- DECOMPILER ERROR at PC35: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC35: LeaveBlock: unexpected jumping out IF_STMT

            -- DECOMPILER ERROR at PC35: LeaveBlock: unexpected jumping out IF_THEN_STMT

            -- DECOMPILER ERROR at PC35: LeaveBlock: unexpected jumping out IF_STMT

          end
        end
      end
    end
  end
  -- DECOMPILER ERROR at PC37: Confused about usage of register: R2 in 'UnsetPending'

  -- DECOMPILER ERROR at PC38: Confused about usage of register: R1 in 'UnsetPending'

  return l_2_4, l_2_3
end

local l_0_0 = Remediation.Threat
if l_0_0.Active then
  local l_0_1, l_0_2 = getDriverName(l_0_0)
  if l_0_1 then
    (Remediation.FfrDriverDeleteByDriverName)(l_0_1)
    local l_0_3 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\" .. l_0_1
    ;
    (Remediation.BtrDeleteRegKey)(l_0_3)
  end
  do
    if l_0_2 then
      (Remediation.BtrDeleteFile)(l_0_2)
    end
  end
end

