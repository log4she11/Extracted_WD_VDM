-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/468.luac 

-- params : ...
-- function num : 0
is_target = function(l_1_0)
  -- function num : 0_0
  if (string.find)(l_1_0, "kobdrvapiw64", 1, true) ~= nil then
    return false
  end
  if (string.find)(l_1_0, "dismhost", 1, true) ~= nil then
    return false
  end
  if (string.find)(l_1_0, "tracerpt", 1, true) ~= nil then
    return false
  end
  if (string.find)(l_1_0, "printisolationhost", 1, true) ~= nil then
    return false
  end
  return true
end

local l_0_0, l_0_1 = nil, nil
if (this_sigattrlog[1]).matched then
  if (this_sigattrlog[1]).utf8p1 ~= nil then
    l_0_0 = (string.lower)((this_sigattrlog[1]).utf8p1)
  end
  if (this_sigattrlog[1]).utf8p2 ~= nil then
    l_0_1 = (string.lower)((this_sigattrlog[1]).utf8p2)
  end
end
if l_0_0 ~= nil and (sysio.IsFileExists)(l_0_0) then
  if is_target(l_0_0) then
    (bm.add_related_file)(l_0_0)
  else
    return mp.CLEAN
  end
end
if l_0_1 ~= nil and (sysio.IsFileExists)(l_0_1) then
  if is_target(l_0_1) then
    (bm.add_related_file)(l_0_1)
    ;
    (MpCommon.AppendPersistContext)(l_0_1, "MasqSuspCopyTarget", 3600)
    local l_0_2 = {}
    -- DECOMPILER ERROR at PC80: No list found for R2 , SetList fails

    -- DECOMPILER ERROR at PC81: Overwrote pending register: R3 in 'AssignReg'

    -- DECOMPILER ERROR at PC82: Overwrote pending register: R4 in 'AssignReg'

    -- DECOMPILER ERROR at PC83: Overwrote pending register: R5 in 'AssignReg'

    ;
    ("T1036.003:masquerading_target")("T1036.003:defenseevasion_target", "T1036.003:MasqSuspCopy.A")
  else
    do
      do return mp.CLEAN end
      return mp.INFECTED
    end
  end
end

