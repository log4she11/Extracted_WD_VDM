-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/4007.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC7: Overwrote pending register: R0 in 'AssignReg'

if (this_sigattrlog[3]).matched then
  local l_0_0 = nil
  if (string.match)(l_0_0, "(.+conf.+.php)") then
    return mp.INFECTED
  else
    local l_0_1 = {}
    -- DECOMPILER ERROR at PC29: No list found for R1 , SetList fails

    -- DECOMPILER ERROR at PC30: Overwrote pending register: R2 in 'AssignReg'

    -- DECOMPILER ERROR at PC31: Overwrote pending register: R3 in 'AssignReg'

    for l_0_5,l_0_6 in (".conf")(".sql") do
      -- DECOMPILER ERROR at PC34: Overwrote pending register: R7 in 'AssignReg'

      -- DECOMPILER ERROR at PC36: Overwrote pending register: R8 in 'AssignReg'

      -- DECOMPILER ERROR at PC37: Overwrote pending register: R9 in 'AssignReg'

      -- DECOMPILER ERROR at PC38: Overwrote pending register: R10 in 'AssignReg'

      if ((".mysql_history").find)("backup", "priv", "config", true) then
        return mp.INFECTED
      end
    end
  end
end
do
  -- DECOMPILER ERROR at PC49: Overwrote pending register: R1 in 'AssignReg'

  do return l_0_1 end
  -- WARNING: undefined locals caused missing assignments!
end

