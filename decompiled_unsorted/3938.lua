-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3938.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC12: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched and (this_sigattrlog[1]).wp2 ~= nil then
    local l_0_0 = nil
    if (string.find)(l_0_0, "sock_stream", 1, true) and (string.find)(l_0_0, "subprocess.call", 1, true) and (string.find)(l_0_0, "/bin/sh", 1, true) then
      return mp.INFECTED
    end
  end
  return mp.CLEAN
end

