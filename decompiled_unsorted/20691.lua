-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20691.luac 

-- params : ...
-- function num : 0
local l_0_0 = ((pehdr.DataDirectory)[pe.IMAGE_DIRECTORY_ENTRY_SECURITY]).RVA
if l_0_0 == 0 then
  return mp.LOWFI
end
if (mp.getfilesize)() < l_0_0 + 4096 then
  return mp.LOWFI
end
;
(mp.readprotection)(false)
if (mp.readfile)(l_0_0 + 3904, 27) == "\004\b\019\002OR1\0180\016\006\003U\004\a\019\tBeaverton1" then
  return mp.INFECTED
end
if (mp.readfile)(l_0_0 + 3876, 27) == "\004\b\019\002OR1\0180\016\006\003U\004\a\019\tBeaverton1" then
  return mp.INFECTED
end
if (mp.readfile)(l_0_0 + 3602, 27) == "\004\b\019\002OR1\0180\016\006\003U\004\a\019\tBeaverton1" then
  return mp.INFECTED
end
return mp.LOWFI

