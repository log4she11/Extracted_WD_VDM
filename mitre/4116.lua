-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4116.luac 

-- params : ...
-- function num : 0
local l_0_0 = {}
local l_0_1 = {}
-- DECOMPILER ERROR at PC4: No list found for R1 , SetList fails

local l_0_2 = {}
-- DECOMPILER ERROR at PC6: Overwrote pending register: R3 in 'AssignReg'

-- DECOMPILER ERROR at PC8: No list found for R2 , SetList fails

-- DECOMPILER ERROR at PC9: No list found for R0 , SetList fails

-- DECOMPILER ERROR at PC11: Overwrote pending register: R4 in 'AssignReg'

-- DECOMPILER ERROR at PC11: Overwrote pending register: R3 in 'AssignReg'

local l_0_3, l_0_4 = "/var/lib/waagent", "/lib/systemd/systemd"
-- DECOMPILER ERROR at PC19: Overwrote pending register: R2 in 'AssignReg'

if (this_sigattrlog[3]).matched then
  l_0_3 = (this_sigattrlog[3]).image_path
  l_0_4 = (this_sigattrlog[3]).utf8p2
end
local l_0_5 = (mp.GetParentProcInfo)()
if l_0_3 ~= nil and l_0_5 ~= nil and l_0_5.image_path ~= nil and not isTainted(l_0_5.image_path, l_0_1) and not isTainted(l_0_3, l_0_1) then
  return mp.CLEAN
end
if l_0_3 ~= nil and l_0_4 ~= nil then
  for l_0_9,l_0_10 in ipairs(l_0_0) do
    local l_0_11 = l_0_10[1]
    local l_0_12 = l_0_10[2]
    if (string.find)(l_0_3, l_0_11, 1, true) and (string.find)(l_0_4, l_0_12, 1, true) then
      return mp.CLEAN
    end
  end
end
do
  if l_0_2 ~= nil and not isParentPackageManager(l_0_2, true) and not checkParentCmdline(l_0_2, l_0_0, 2) and (versioning.GetCloudBlockLevel)() >= 4 then
    TrackPidAndTechniqueBM(l_0_2, "T1543.002", "Persistence")
    addRelatedProcess()
    reportRelatedBmHits()
    return mp.INFECTED
  end
  return mp.CLEAN
end

