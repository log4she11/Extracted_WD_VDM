-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/974.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC6: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC22: Overwrote pending register: R0 in 'AssignReg'

  if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
    do return mp.CLEAN end
    if (this_sigattrlog[2]).ppid ~= (this_sigattrlog[4]).ppid then
      return mp.CLEAN
    end
    return mp.INFECTED
  end
end

