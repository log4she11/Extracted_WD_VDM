-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22094.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2 = nil
if (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or (mp.get_contextdata)(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  l_0_2 = (mp.get_contextdata)(mp.CONTEXT_DATA_FILENAME)
end
if l_0_2 == nil then
  if (string.lower)((mp.getfilename)()) == nil then
    return mp.CLEAN
  end
  -- DECOMPILER ERROR at PC33: Confused about usage of register: R1 in 'UnsetPending'

  l_0_2 = ((string.lower)((mp.getfilename)())):match("([^\\]+)$")
end
if l_0_2 ~= nil and ((string.match)(l_0_2, "^invoice%-") or (string.match)(l_0_2, "^invoices%-") or (string.match)(l_0_2, "^invoice_") or (string.match)(l_0_2, "^kpinvoice_") or (string.match)(l_0_2, "^scan%-%d+") or (string.match)(l_0_2, "^scan%-%a+%-%d+%-.+") or (string.match)(l_0_2, "^cust%-%a+%-%d+%-.+") or (string.match)(l_0_2, "^order%-") or (string.match)(l_0_2, "^inv%-%a+%-%d+%-.+") or (string.match)(l_0_2, "^payment%-") or (string.match)(l_0_2, "^acknowledgement%-") or (string.match)(l_0_2, "^rechnung%-") or (string.match)(l_0_2, "^rechnungs%-") or (string.match)(l_0_2, "^gescanntes%-") or (string.match)(l_0_2, "^rech%-%d+") or (string.match)(l_0_2, "^rech%-%a+%-%d+%-.+") or (string.match)(l_0_2, "^ups__") or (string.match)(l_0_2, "^view__report") or (string.match)(l_0_2, "^document__%d+") or (string.match)(l_0_2, "^re%-invoice%-") or (string.match)(l_0_2, "^dhl__") or (string.match)(l_0_2, "^no%-%a+%-%d+%-.+")) then
  return mp.INFECTED
end
return mp.CLEAN

