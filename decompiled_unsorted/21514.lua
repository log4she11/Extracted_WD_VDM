-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21514.luac 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.hasexports and peattributes.epinfirstsect and pehdr.NumberOfSections == 5 and peattributes.no_tls and pehdr.SizeOfImage >= 700416 and pehdr.SizeOfImage <= 851968 and (pesecs[pevars.epsec]).SizeOfRawData >= 196608 and (pesecs[pevars.epsec]).SizeOfRawData <= 294912 and (pesecs[2]).SizeOfRawData >= 12288 and (pesecs[2]).SizeOfRawData <= 16384 and (pesecs[5]).VirtualSize >= 12288 and (pesecs[5]).VirtualSize <= 24576 and (pesecs[3]).SizeOfRawData == 2560 and (pesecs[3]).VirtualSize >= 425984 and (pesecs[3]).VirtualSize <= 491520 and (pesecs[pehdr.NumberOfSections]).Name == ".reloc" and (pesecs[pevars.epsec]).Name == ".text" then
  return mp.INFECTED
end
return mp.CLEAN

