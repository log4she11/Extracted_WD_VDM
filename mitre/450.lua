-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/450.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
if l_0_0 and ((string.find)(l_0_0, "tiworker.exe", 1, true) or (string.find)(l_0_0, "dismhost.exe", 1, true) or (string.find)(l_0_0, "zscaler-windows", 1, true)) then
  return mp.CLEAN
end
local l_0_1 = nil
-- DECOMPILER ERROR at PC51: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[4]).matched and (this_sigattrlog[4]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[4]).utf8p2
end
-- DECOMPILER ERROR at PC65: Unhandled construct in 'MakeBoolean' P1

if (this_sigattrlog[5]).matched and (this_sigattrlog[5]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[5]).utf8p2
end
if (this_sigattrlog[6]).matched and (this_sigattrlog[6]).utf8p2 ~= nil then
  l_0_1 = (this_sigattrlog[6]).utf8p2
end
if l_0_1 ~= nil and (sysio.IsFileExists)(l_0_1) then
  (bm.add_related_file)(l_0_1)
  ;
  (MpCommon.AppendPersistContext)((string.lower)(l_0_1), "MasqSuspRenameTargetL2", 3600)
  local l_0_2 = {}
  -- DECOMPILER ERROR at PC105: No list found for R2 , SetList fails

  -- DECOMPILER ERROR at PC106: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC107: Overwrote pending register: R4 in 'AssignReg'

  -- DECOMPILER ERROR at PC108: Overwrote pending register: R5 in 'AssignReg'

  ;
  ("T1036.003:masquerading_target")("T1036.003:defenseevasion_target", "T1036.003:MasqSuspRename.H")
end
do
  return mp.INFECTED
end

