-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17942.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 11 then
  if pehdr.Subsystem == 1 then
    (mp.changedetectionname)(805306436)
  else
    if pehdr.Machine == 34404 then
      (mp.changedetectionname)(805306435)
    end
  end
  return mp.INFECTED
end
return mp.CLEAN

