-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19216.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[2]).matched and (this_sigattrlog[2]).utf8p2 ~= nil then
    local l_0_0, l_0_1 = nil
  end
  if not (this_sigattrlog[3]).matched or (this_sigattrlog[3]).utf8p1 == nil or (string.lower)((string.sub)((this_sigattrlog[3]).utf8p1, -11)) == "\\target.lnk" then
    return mp.CLEAN
  end
  return mp.INFECTED
end

