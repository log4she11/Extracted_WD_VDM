-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3574.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)(mp.FILEPATH_QUERY_LOWERCASE)
if l_0_0 == nil or (string.len)(l_0_0) <= 5 then
  return mp.CLEAN
end
if (mp.getfilesize)() > 1024000 then
  return mp.CLEAN
end
if (string.find)(l_0_0, ",doc.exe", 1, true) or (string.find)(l_0_0, ", pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, ", pdf,exe", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, "·pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, "_pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, ",pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, "-pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, "_exe.exe", 1, true) ~= nil or (string.find)(l_0_0, ",pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, "  pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, ".jpg.exe", 1, true) ~= nil or (string.find)(l_0_0, "_pdf.iso", 1, true) ~= nil or (string.find)(l_0_0, ",pdf.iso", 1, true) ~= nil or (string.find)(l_0_0, ",pdf.xz", 1, true) ~= nil or (string.find)(l_0_0, ",pdf.z", 1, true) ~= nil or (string.find)(l_0_0, "_pdf.gz", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, ", pdf.zip", 1, true) ~= nil or (string.find)(l_0_0, ", pdf.iso", 1, true) ~= nil or (string.find)(l_0_0, ".jpg.ace", 1, true) ~= nil or (string.find)(l_0_0, "_jpeg.scr", 1, true) ~= nil or (string.find)(l_0_0, "_pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, "·pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, "_xls.exe", 1, true) ~= nil or (string.find)(l_0_0, ".pptx.exe", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.gz", 1, true) ~= nil or (string.find)(l_0_0, ".pdf.ace", 1, true) ~= nil or (string.find)(l_0_0, "- pdf.exe", 1, true) ~= nil or (string.find)(l_0_0, "pdf.scr", 1, true) ~= nil or (string.find)(l_0_0, "docs. jpg.exe", 1, true) ~= nil or (string.find)(l_0_0, ".pdf...exe", 1, true) ~= nil or (string.find)(l_0_0, "jpg..exe", 1, true) ~= nil or (string.find)(l_0_0, "-doc.exe", 1, true) ~= nil or (string.find)(l_0_0, "-doc.iso", 1, true) ~= nil or (string.find)(l_0_0, ".xlsx.exe", 1, true) ~= nil or (string.find)(l_0_0, ".pdf....bat", 1, true) ~= nil or (string.find)(l_0_0, "_pdff.exe", 1, true) ~= nil or (string.find)(l_0_0, ".doc.exe", 1, true) ~= nil or (string.find)(l_0_0, " jbg.exe", 1, true) ~= nil or (string.find)(l_0_0, "_xlx.exe", 1, true) ~= nil or (string.find)(l_0_0, "viable solution.pcr", 1, true) ~= nil or (string.find)(l_0_0, "_xlsx.lzh.exe", 1, true) ~= nil or (string.find)(l_0_0, "^^dwg.scr", 1, true) ~= nil or (string.find)(l_0_0, ",pdf.img", 1, true) ~= nil or (string.find)(l_0_0, "factura..exe", 1, true) ~= nil or (string.find)(l_0_0, "%.pdf_.+%.exe") ~= nil or (string.find)(l_0_0, "%.pdf_.+%.r13") ~= nil or (string.find)(l_0_0, "%.png__+%.exe") ~= nil or (string.find)(l_0_0, "mmmobi%d%d%d%d+%.exe") ~= nil or (string.find)(l_0_0, "justificante %d%d %d%d 2022pdf.exe") ~= nil or (string.find)(l_0_0, "justificante%d%d%d%d2022pdf%.exe") ~= nil or (string.find)(l_0_0, "scan_img_invoice #%d%d%d%d+2022%-03%-14%.exe") ~= nil or (string.find)(l_0_0, "scan_2022_%d%d_%d%d_%d%d+_%d%d+_%d%d+_%d%d+%.exe") ~= nil or (string.find)(l_0_0, "hxd%.png$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN

