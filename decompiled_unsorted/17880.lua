-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/17880.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("SIGATTR:DelphiFile") and pehdr.NumberOfSections == 8 then
  (pe.set_image_filename)("\"myapp.exe\" /install")
  ;
  (pe.reemulate)()
end
return mp.INFECTED

