-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17922.luac 

-- params : ...
-- function num : 0
if peattributes.is_exe == false then
  return mp.CLEAN
end
if (pe.query_import)(pe.IMPORT_STATIC, 2430426247) == 0 then
  return mp.CLEAN
end
if (pe.query_import)(pe.IMPORT_STATIC, 4186436034) == 0 then
  return mp.CLEAN
end
return mp.INFECTED

