-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2987.luac 

-- params : ...
-- function num : 0
local l_0_0 = function(l_1_0, l_1_1)
  -- function num : 0_0
  if l_1_0 == nil then
    return false
  end
  local l_1_2 = 0
  for l_1_6,l_1_7 in ipairs(l_1_0) do
    l_1_2 = l_1_2 + 1
    local l_1_8 = l_1_0[l_1_2]
    local l_1_9 = l_1_8.FingerprintSha1
    if l_1_9 == nil then
      return false
    end
    if l_1_9.HashType ~= "SHA1" then
      return false
    end
    do
      do
        local l_1_10 = l_1_9.Hash
        if l_1_10 == nil then
          return false
        end
        if l_1_1[l_1_10] then
          return true
        end
        do break end
        -- DECOMPILER ERROR at PC32: LeaveBlock: unexpected jumping out DO_STMT

      end
    end
  end
end

local l_0_1 = (mp.GetCertificateInfo)()
if l_0_1 == nil then
  return mp.CLEAN
end
local l_0_2 = {}
l_0_2["��Oe\207$��_�Np��D2�p\v"] = true
l_0_2["\006o�T��s\149!��\239\fC\255�j\017k\191"] = true
l_0_2["џ\b\200\020{�\a���k\023C\031Oj\023\251"] = true
l_0_2["�~r5=i\016����\209\006\022v\232\003V�S"] = true
l_0_2[".\13544\140\0039\r$��n��\001��:��"] = true
l_0_2["z\001\240\"\162\002BE}u6\t\223\255\0005�3\244"] = true
l_0_2["1��;\141\030�D\181\tu��}\218\026\1707E\188"] = true
for l_0_6,l_0_7 in ipairs(l_0_1) do
  if l_0_0(l_0_7.Certificates, l_0_2) then
    return mp.INFECTED
  end
  do break end
end
do
  return mp.CLEAN
end

