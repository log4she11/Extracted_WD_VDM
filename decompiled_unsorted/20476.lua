-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20476.luac 

-- params : ...
-- function num : 0
if peattributes.isdll ~= true then
  return mp.CLEAN
end
if peattributes.epscn_islast ~= true then
  return mp.CLEAN
end
if peattributes.lastscn_writable ~= true then
  return mp.CLEAN
end
if epcode[1] ~= 131 then
  return mp.CLEAN
end
if epcode[2] ~= 124 then
  return mp.CLEAN
end
if epcode[3] ~= 36 then
  return mp.CLEAN
end
if epcode[5] ~= 1 then
  return mp.CLEAN
end
if epcode[6] ~= 117 then
  return mp.CLEAN
end
return mp.INFECTED

