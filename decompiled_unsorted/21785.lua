-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21785.luac 

-- params : ...
-- function num : 0
if epcode[1] ~= 141 then
  return mp.CLEAN
end
if epcode[2] ~= 148 then
  return mp.CLEAN
end
if epcode[3] ~= 7 then
  return mp.CLEAN
end
if epcode[6] ~= 0 then
  return mp.CLEAN
end
if epcode[7] ~= 0 then
  return mp.CLEAN
end
if epcode[8] ~= 129 then
  return mp.CLEAN
end
if epcode[9] ~= 194 then
  return mp.CLEAN
end
if epcode[12] ~= 0 then
  return mp.CLEAN
end
if epcode[13] ~= 0 then
  return mp.CLEAN
end
if epcode[14] ~= 129 then
  return mp.CLEAN
end
if epcode[15] ~= 250 then
  return mp.CLEAN
end
if epcode[18] ~= 0 then
  return mp.CLEAN
end
if epcode[19] ~= 0 then
  return mp.CLEAN
end
if epcode[10] - epcode[16] ~= 0 then
  return mp.CLEAN
end
if epcode[11] - epcode[17] ~= 0 then
  return mp.CLEAN
end
if epcode[20] ~= 116 then
  return mp.CLEAN
end
if epcode[22] ~= 129 then
  return mp.CLEAN
end
if epcode[23] ~= 250 then
  return mp.CLEAN
end
if epcode[26] ~= 0 then
  return mp.CLEAN
end
if epcode[27] ~= 0 then
  return mp.CLEAN
end
if epcode[28] ~= 127 then
  return mp.CLEAN
end
return mp.INFECTED

