-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/12924.luac 

-- params : ...
-- function num : 0
if peattributes.ismsil ~= true or (mp.getfilesize)() > 102400 then
  return mp.CLEAN
end
return mp.INFECTED

