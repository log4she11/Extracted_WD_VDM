-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/22159.luac 

-- params : ...
-- function num : 0
local l_0_0, l_0_1 = nil, nil
local l_0_2 = nil
-- DECOMPILER ERROR at PC11: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC41: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC52: Overwrote pending register: R0 in 'AssignReg'

-- DECOMPILER ERROR at PC59: Overwrote pending register: R1 in 'AssignReg'

-- DECOMPILER ERROR at PC71: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC82: Overwrote pending register: R0 in 'AssignReg'

-- DECOMPILER ERROR at PC89: Overwrote pending register: R1 in 'AssignReg'

-- DECOMPILER ERROR at PC101: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC112: Overwrote pending register: R0 in 'AssignReg'

-- DECOMPILER ERROR at PC119: Overwrote pending register: R1 in 'AssignReg'

-- DECOMPILER ERROR at PC131: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC142: Overwrote pending register: R0 in 'AssignReg'

-- DECOMPILER ERROR at PC149: Overwrote pending register: R1 in 'AssignReg'

-- DECOMPILER ERROR at PC161: Overwrote pending register: R2 in 'AssignReg'

-- DECOMPILER ERROR at PC172: Overwrote pending register: R0 in 'AssignReg'

-- DECOMPILER ERROR at PC179: Overwrote pending register: R1 in 'AssignReg'

-- DECOMPILER ERROR at PC183: Unhandled construct in 'MakeBoolean' P3

-- DECOMPILER ERROR at PC183: Unhandled construct in 'MakeBoolean' P3

-- DECOMPILER ERROR at PC183: Unhandled construct in 'MakeBoolean' P3

-- DECOMPILER ERROR at PC183: Unhandled construct in 'MakeBoolean' P3

if (((((not (this_sigattrlog[1]).matched or (this_sigattrlog[1]).utf8p2 == nil or (this_sigattrlog[2]).matched) and not (this_sigattrlog[3]).matched) or (this_sigattrlog[4]).matched) and not (this_sigattrlog[5]).matched) or (this_sigattrlog[6]).matched) and (this_sigattrlog[6]).utf8p2 ~= nil then
  do return mp.CLEAN end
  -- DECOMPILER ERROR at PC192: Confused about usage of register: R1 in 'UnsetPending'

  if l_0_2 ~= nil and (string.lower)((this_sigattrlog[1]).utf8p2) ~= nil then
    if 0 == 1 and ((string.find)((string.lower)((this_sigattrlog[1]).utf8p2), "cpuage.tnt", 1, true) ~= nil or (string.find)(l_0_2, "cpuoptimizer", 1, true) ~= nil or (string.find)(l_0_2, "checkcpu", 1, true) ~= nil) then
      return mp.INFECTED
    else
      -- DECOMPILER ERROR at PC221: Confused about usage of register: R2 in 'UnsetPending'

      -- DECOMPILER ERROR at PC225: Confused about usage of register: R1 in 'UnsetPending'

      if 0 == 2 and ((string.find)((string.lower)((this_sigattrlog[1]).utf8p2), "cpuchecker.txt", 1, true) ~= nil or (string.find)(l_0_2, "radlover", 1, true) ~= nil or (string.find)(l_0_2, "cpuulover", 1, true) ~= nil) then
        return mp.INFECTED
      else
        -- DECOMPILER ERROR at PC254: Confused about usage of register: R2 in 'UnsetPending'

        -- DECOMPILER ERROR at PC258: Confused about usage of register: R1 in 'UnsetPending'

        if 0 == 3 and ((string.find)((string.lower)((this_sigattrlog[1]).utf8p2), "stream.txt", 1, true) ~= nil or (string.find)(l_0_2, "superlover", 1, true) ~= nil or (string.find)(l_0_2, "flaterem", 1, true) ~= nil or (string.find)(l_0_2, "strdat", 1, true) ~= nil) then
          return mp.INFECTED
        else
          -- DECOMPILER ERROR at PC296: Confused about usage of register: R2 in 'UnsetPending'

          -- DECOMPILER ERROR at PC300: Confused about usage of register: R1 in 'UnsetPending'

          if 0 == 4 and ((string.find)((string.lower)((this_sigattrlog[1]).utf8p2), "newradage.tnt", 1, true) ~= nil or (string.find)(l_0_2, "newageishere", 1, true) ~= nil or (string.find)(l_0_2, "cpunewage", 1, true) ~= nil) then
            return mp.INFECTED
          else
            -- DECOMPILER ERROR at PC329: Confused about usage of register: R2 in 'UnsetPending'

            -- DECOMPILER ERROR at PC333: Confused about usage of register: R1 in 'UnsetPending'

            if 0 == 5 and ((string.find)((string.lower)((this_sigattrlog[1]).utf8p2), "antiusbshortcut.zip", 1, true) ~= nil or (string.find)(l_0_2, "antishortcutupdate", 1, true) ~= nil or (string.find)(l_0_2, "antiusbshortcut", 1, true) ~= nil) then
              return mp.INFECTED
            else
              -- DECOMPILER ERROR at PC362: Confused about usage of register: R2 in 'UnsetPending'

              -- DECOMPILER ERROR at PC366: Confused about usage of register: R1 in 'UnsetPending'

              if 0 == 6 and ((string.find)((string.lower)((this_sigattrlog[1]).utf8p2), "winddowsupdater.zip", 1, true) ~= nil or (string.find)(l_0_2, "winddowsupdater", 1, true) ~= nil) then
                return mp.INFECTED
              end
            end
          end
        end
      end
    end
  end
  return mp.CLEAN
end

