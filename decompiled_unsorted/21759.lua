-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21759.luac 

-- params : ...
-- function num : 0
-- DECOMPILER ERROR at PC11: Overwrote pending register: R0 in 'AssignReg'

do
  if (this_sigattrlog[1]).matched then
    local l_0_0 = nil
  else
  end
  -- DECOMPILER ERROR at PC37: Overwrote pending register: R0 in 'AssignReg'

  do
    if not (this_sigattrlog[2]).matched or (this_sigattrlog[3]).matched then
      local l_0_1, l_0_2 = (string.lower)((this_sigattrlog[2]).utf8p1)
    end
    -- DECOMPILER ERROR at PC38: Confused about usage of register: R0 in 'UnsetPending'

    -- DECOMPILER ERROR at PC42: Confused about usage of register: R0 in 'UnsetPending'

    if l_0_1 ~= nil then
      local l_0_3 = nil
      local l_0_4 = (string.sub)(l_0_1, -4)
      if (string.find)("|.asp|aspx|ashx|asmx|", l_0_4, 1, true) then
        local l_0_5 = nil
        if (string.match)((string.lower)((bm.get_imagepath)()), "\\microsoft\\exchange server\\v%d%d\\") ~= nil or (string.match)((string.lower)((bm.get_imagepath)()), "\\microsoft shared\\web server extensions\\%d%d\\") ~= nil then
          return mp.CLEAN
        end
        local l_0_6, l_0_7 = , (bm.get_process_relationships)()
        for l_0_11,l_0_12 in ipairs(l_0_7) do
          local l_0_8 = nil
          -- DECOMPILER ERROR at PC85: Confused about usage of register: R10 in 'UnsetPending'

          if R10_PC85.image_path ~= nil and ((string.match)((string.lower)(R10_PC85.image_path), "\\microsoft\\exchange server\\v%d%d\\") ~= nil or (string.match)((string.lower)(R10_PC85.image_path), "\\microsoft shared\\web server extensions\\%d%d\\") ~= nil) then
            return mp.CLEAN
          end
        end
        if (sysio.IsFileExists)(l_0_3) then
          (bm.add_related_file)(l_0_3)
        end
        return mp.INFECTED
      end
    end
    do
      return mp.CLEAN
    end
  end
end

