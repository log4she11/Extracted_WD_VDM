-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/2570.luac 

-- params : ...
-- function num : 0
if not (mp.get_mpattribute)("PACKED_WITH:[CMDEmbedded]") then
  return mp.CLEAN
end
local l_0_0 = (mp.getfilesize)()
if l_0_0 > 1024 then
  (mp.set_mpattribute)("LnkArggt400b")
else
  if l_0_0 > 512 then
    (mp.set_mpattribute)("LnkArggt200b")
  else
    if l_0_0 > 256 then
      (mp.set_mpattribute)("LnkArggt100b")
    else
      if l_0_0 > 128 then
        (mp.set_mpattribute)("LnkArggt80b")
      else
        if l_0_0 > 80 then
          (mp.set_mpattribute)("LnkArggt50b")
        end
      end
    end
  end
end
return mp.CLEAN

