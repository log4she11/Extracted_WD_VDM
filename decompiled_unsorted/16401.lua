-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16401.luac 

-- params : ...
-- function num : 0
if (mp.IsTrustedFile)(false) ~= false then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 3 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT >= 2 then
  return mp.LOWFI
end
return mp.CLEAN

