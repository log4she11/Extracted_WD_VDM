-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2218.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("RPF:PEHasIOAVURL") and (mp.get_mpattribute)("MpCPlApplet") and not (mp.get_mpattribute)("//GCPLFileHasIOAVURL") then
  (mp.set_mpattribute)("Lua:CPLFileHasIOAVURL")
  ;
  (mp.set_mpattribute)("//GCPLFileHasIOAVURL")
end
return mp.CLEAN

