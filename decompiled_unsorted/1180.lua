-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/1180.luac 

-- params : ...
-- function num : 0
local l_0_0 = (string.lower)((bm.get_imagepath)())
do
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC11: No list found for R1 , SetList fails

  -- DECOMPILER ERROR at PC12: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC13: Overwrote pending register: R3 in 'AssignReg'

  -- DECOMPILER ERROR at PC14: Overwrote pending register: R4 in 'AssignReg'

  for l_0_5 = "lsass.exe", "svchost.exe", "services.exe" do
    if l_0_0:find(l_0_1[l_0_5], 1, true) ~= nil then
      return mp.CLEAN
    end
  end
  do return mp.INFECTED end
  -- WARNING: undefined locals caused missing assignments!
end

