-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17944.luac 

-- params : ...
-- function num : 0
if mp.HSTR_WEIGHT >= 2 then
  if pehdr.Subsystem == 1 then
    (mp.changedetectionname)(805306439)
  else
    if pehdr.Machine == 34404 then
      (mp.changedetectionname)(805306438)
    end
  end
  return mp.INFECTED
end
return mp.CLEAN

