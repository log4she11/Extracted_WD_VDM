-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17691.luac 

-- params : ...
-- function num : 0
if peattributes.isdll and peattributes.hasexports then
  (mp.set_mpattribute)("attrmatch_rescan_notiexplore")
  if mp.HSTR_WEIGHT >= 5 then
    return mp.INFECTED
  end
end
return mp.CLEAN

