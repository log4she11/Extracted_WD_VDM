-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/16788.luac 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.hasexports then
  if mp.HSTR_WEIGHT == 16 then
    return mp.SUSPICIOUS
  end
  return mp.INFECTED
end
return mp.CLEAN

