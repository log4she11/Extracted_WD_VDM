-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/20944.luac 

-- params : ...
-- function num : 0
do
  if peattributes.isexe and (mp.get_mpattribute)("SIGATTR:DelphiFile") then
    local l_0_0 = (hstrlog[1]).hitcount
    if l_0_0 > 10 then
      (mp.set_mpattribute)("HSTR:DelphiPacker.DummyCallsGT10")
    end
    if l_0_0 > 20 then
      (mp.set_mpattribute)("HSTR:DelphiPacker.DummyCallsGT20")
    else
      ;
      (mp.set_mpattribute)("HSTR:DelphiPacker.DummyCallsLE20")
    end
    if l_0_0 > 30 then
      (mp.set_mpattribute)("HSTR:DelphiPacker.DummyCallsGT30")
    else
      ;
      (mp.set_mpattribute)("HSTR:DelphiPacker.DummyCallsLE30")
    end
  end
  return mp.CLEAN
end

