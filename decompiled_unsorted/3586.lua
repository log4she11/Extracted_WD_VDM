-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3586.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((string.sub)((mp.getfilename)(), -4))
do
  -- DECOMPILER ERROR at PC30: Unhandled construct in 'MakeBoolean' P3

  -- DECOMPILER ERROR at PC30: Unhandled construct in 'MakeBoolean' P3

  if ((mp.get_mpattribute)("pea_isexe") and l_0_0 == ".exe") or l_0_0 == ".bat" then
    local l_0_1 = (string.lower)((mp.getfilename)())
    if (string.find)(l_0_1, ".docx->", 1, true) or (string.find)(l_0_1, ".doc->", 1, true) or (string.find)(l_0_1, ".exe->(inno#00", 1, true) then
      return mp.CLEAN
    end
    if (string.find)(l_0_1, "bank ", 1, true) ~= nil or (string.find)(l_0_1, "bank_", 1, true) ~= nil or (string.find)(l_0_1, "balance", 1, true) ~= nil or (string.find)(l_0_1, "purchase..?order") ~= nil or (string.find)(l_0_1, "purchase", 1, true) ~= nil or (string.find)(l_0_1, "payment", 1, true) ~= nil or (string.find)(l_0_1, "payee", 1, true) ~= nil or (string.find)(l_0_1, "invoice", 1, true) ~= nil or (string.find)(l_0_1, "inquiry%.exe", 1, true) ~= nil or (string.find)(l_0_1, "enquiry.exe", 1, true) ~= nil or (string.find)(l_0_1, "confirmation", 1, true) ~= nil or (string.find)(l_0_1, "silp details", 1, true) ~= nil or (string.find)(l_0_1, "_details", 1, true) ~= nil or (string.find)(l_0_1, "for quote", 1, true) ~= nil or (string.find)(l_0_1, "img_%d+%.exe") ~= nil or (string.find)(l_0_1, "%.pdf") ~= nil or (string.find)(l_0_1, "swift..?copy.exe") ~= nil or (string.find)(l_0_1, "swift..?of..?transfer") ~= nil or (string.find)(l_0_1, "delivery..?notif") ~= nil or (string.find)(l_0_1, "dhl_receipt", 1, true) ~= nil or (string.find)(l_0_1, "dhl recipt", 1, true) ~= nil or (string.find)(l_0_1, "unpaid", 1, true) ~= nil or (string.find)(l_0_1, "sn_zn_", 1, true) ~= nil or (string.find)(l_0_1, "account details", 1, true) ~= nil or (string.find)(l_0_1, "statement of account", 1, true) ~= nil or (string.find)(l_0_1, "scan%d+") ~= nil or (string.find)(l_0_1, "inv-no") ~= nil or (string.find)(l_0_1, "shipping document", 1, true) ~= nil or (string.find)(l_0_1, "qoute request", 1, true) ~= nil or (string.find)(l_0_1, "invitation.exe", 1, true) ~= nil or (string.find)(l_0_1, "rechnung", 1, true) ~= nil or (string.find)(l_0_1, "nota.?fiscal.?-.?%d") ~= nil or (string.find)(l_0_1, "boleto", 1, true) or (string.find)(l_0_1, "factura", 1, true) or (string.find)(l_0_1, ".pdf.exe", 1, true) or (string.find)(l_0_1, "_pdf.exe", 1, true) or (string.find)(l_0_1, "pdf.scr", 1, true) or (string.find)(l_0_1, "jpeg.exe", 1, true) or (string.find)(l_0_1, "jpeg.scr", 1, true) or (string.find)(l_0_1, ".zip.exe", 1, true) or (string.find)(l_0_1, "picture.scr", 1, true) or (string.find)(l_0_1, "image.scr", 1, true) or (string.find)(l_0_1, "jpg.exe", 1, true) or (string.find)(l_0_1, ".doc.exe", 1, true) or (string.find)(l_0_1, ".xlsx.exe", 1, true) or (string.find)(l_0_1, ",xls.exe", 1, true) or (string.find)(l_0_1, ".xml.exe", 1, true) or (string.find)(l_0_1, ".html.exe", 1, true) or (string.find)(l_0_1, "oil project (job at hand).exe", 1, true) or (string.find)(l_0_1, "receipt_xls.exe", 1, true) or (string.find)(l_0_1, "pdf.bat", 1, true) or (string.find)(l_0_1, "visualizar %- detalhes processo juri%.[%_%s]?[0-9][0-9][0-9][0-9][0-9]+%.exe") ~= nil or (string.find)(l_0_1, "notafisca%-[0-9][0-9][0-9][0-9][0-9]+%.exe") ~= nil or (string.find)(l_0_1, "extratofgts[0-9][0-9][0-9][0-9][0-9]+m%.exe") ~= nil or (string.find)(l_0_1, "anexo%-documento[0-9][0-9][0-9][0-9][0-9]+%.exe") ~= nil or (string.find)(l_0_1, "shipping details", 1, true) ~= nil or (string.find)(l_0_1, "swift copy", 1, true) ~= nil or (string.find)(l_0_1, "remittance", 1, true) ~= nil or (string.find)(l_0_1, "visualizar%_nota%_fiscal%_[0-9][0-9][0-9][0-9][0-9]+%.exe") ~= nil then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

