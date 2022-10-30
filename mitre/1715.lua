-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1715.luac 

-- params : ...
-- function num : 0
local l_0_2 = nil
local l_0_3 = {}
local l_0_4 = false
local l_0_5 = false
if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p1 ~= nil then
  l_0_2 = (this_sigattrlog[2]).utf8p1
  local l_0_0, l_0_1 = {"program files", "windows"}
end
do
  -- DECOMPILER ERROR at PC22: Confused about usage of register: R4 in 'UnsetPending'

  if contains(l_0_2, l_0_0) then
    return mp.CLEAN
  end
  if IsLegacyOrgMachine() or IsTechniqueObservedForPid("BM", "ttexclusion") or IsTacticObservedForPid("BM", "ttexclusion") or IsTacticObservedForPid("BM", "ttexclusion_cln") then
    return mp.CLEAN
  end
  if (this_sigattrlog[8]).matched then
    l_0_3 = parseNetworkVolumeEvent(this_sigattrlog[8])
  else
    if (this_sigattrlog[9]).matched then
      l_0_3 = parseNetworkVolumeEvent(this_sigattrlog[9])
      l_0_4 = true
    end
  end
  if l_0_3 and #l_0_3 < 0 then
    return mp.CLEAN
  end
  if tonumber(l_0_3.Bout) < 100000 then
    return mp.CLEAN
  end
  local l_0_6 = nil
  -- DECOMPILER ERROR at PC100: Unhandled construct in 'MakeBoolean' P1

  if l_0_4 and ((bm.GetOverallTrafficVolumes)())["incoming_response "] > 10000000 then
    l_0_5 = true
  end
  if ((bm.GetOverallTrafficVolumes)()).outgoing_req > 10000000 then
    l_0_5 = true
  end
  if l_0_5 then
    add_parents()
    reportRelatedBmHits()
    addOverallNetworkVolume()
    TrackPidAndTechniqueBM("BM", "T1567", "ExfilOverWeb")
    return mp.INFECTED
  end
  return mp.CLEAN
end

