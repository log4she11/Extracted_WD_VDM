-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3477.luac 

-- params : ...
-- function num : 0
GetARXRemediationCodes = function(l_1_0)
  -- function num : 0_0
  local l_1_1 = (string.find)(l_1_0, "!ARX", 1, true)
  if l_1_1 == nil or l_1_0 == nil then
    return 
  end
  local l_1_3 = nil
  if (string.len)(l_1_0) == 0 then
    return 
  end
  local l_1_4 = nil
  l_1_3 = l_1_3 + 1
  local l_1_2 = {}
  while 1 do
    if l_1_3 < l_1_4 then
      local l_1_5 = (string.sub)(l_1_0, l_1_3, l_1_3)
      local l_1_6 = (string.sub)(l_1_0, l_1_3 + 1, l_1_3 + 1)
    end
    if l_1_5 >= "a" and l_1_5 <= "z" and l_1_6 >= "a" then
      do
        if l_1_6 > "z" then
          break
        end
        l_1_2[l_1_5 .. l_1_6] = true
        l_1_3 = l_1_3 + 2
        -- DECOMPILER ERROR at PC49: LeaveBlock: unexpected jumping out IF_THEN_STMT

        -- DECOMPILER ERROR at PC49: LeaveBlock: unexpected jumping out IF_STMT

      end
    end
  end
  return l_1_2
end

GetLatentNidByThreatCategory = function(l_2_0)
  -- function num : 0_1
  if l_2_0 ~= nil then
    local l_2_1 = (string.match)(l_2_0, "^%a+:")
    if l_2_1 ~= nil then
      l_2_1 = (string.lower)(l_2_1)
      local l_2_2 = {}
      l_2_2["trojan:"] = 805306673
      l_2_2["browsermodifier:"] = 805306674
      return l_2_2[l_2_1]
    end
  end
end

ARX_DetectionSpecific = function()
  -- function num : 0_2
  local l_3_0 = (MpDetection.GetCurrentThreat)()
  if l_3_0 == nil or l_3_0.Name == nil then
    return 
  end
  local l_3_1 = GetARXRemediationCodes(l_3_0.Name)
  if l_3_1 == nil then
    return 
  end
  local l_3_2 = GetLatentNidByThreatCategory(l_3_0.Name)
  if l_3_2 == nil then
    return 
  end
  for l_3_6,l_3_7 in pairs(l_3_0.Resources) do
    if l_3_7.Schema == "file" and (crypto.bitand)(l_3_7.Type, MpCommon.MPRESOURCE_TYPE_CONCRETE) == MpCommon.MPRESOURCE_TYPE_CONCRETE and l_3_1.ep == true then
      Infrastructure_ReportProductExcludedPathsInGroupPolicy(l_3_2)
    end
  end
end

ARX_PreRemediation = function()
  -- function num : 0_3
  local l_4_0 = Remediation.Threat
  if l_4_0 == nil or l_4_0.Name == nil then
    return 
  end
  local l_4_1 = GetARXRemediationCodes(l_4_0.Name)
  if l_4_1 == nil then
    return 
  end
  for l_4_5,l_4_6 in pairs(l_4_0.Resources) do
    if l_4_6.Schema == "file" and (crypto.bitand)(l_4_6.Type, MpCommon.MPRESOURCE_TYPE_CONCRETE) == MpCommon.MPRESOURCE_TYPE_CONCRETE and l_4_1.bx == true then
      (Remediation.SetRemovalPolicy)((crypto.bitor)((Remediation.Threat).RemovalPolicy, 32))
    end
  end
end


