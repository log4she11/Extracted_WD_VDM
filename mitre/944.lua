-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/944.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[4]).matched then
    local l_0_0, l_0_1, l_0_2, l_0_3, l_0_4, l_0_5, l_0_6 = nil
  else
  end
  -- DECOMPILER ERROR at PC29: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC47: Confused about usage of register: R0 in 'UnsetPending'

  -- DECOMPILER ERROR at PC56: Confused about usage of register: R0 in 'UnsetPending'

  if (not (this_sigattrlog[5]).matched or (string.lower)((this_sigattrlog[5]).utf8p2) ~= nil) and ((string.find)((string.lower)((this_sigattrlog[5]).utf8p2), "https://dev.azure.com", 1, true) or (string.find)((string.lower)((this_sigattrlog[5]).utf8p2), "https://portalpre.inmocaixa.com", 1, true) or (string.find)((string.lower)((this_sigattrlog[5]).utf8p2), "https://www.nfbio.dk", 1, true) or (string.find)((string.lower)((this_sigattrlog[5]).utf8p2), "https://lsp.accenture.com", 1, true)) then
    return mp.CLEAN
  end
  TrackPidAndTechniqueBM("BM", "T1505.003", "Persistence_Webshell")
  return mp.INFECTED
end

