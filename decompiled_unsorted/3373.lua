-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/3373.luac 

-- params : ...
-- function num : 0
local l_0_0 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
do
  local l_0_1 = {}
  -- DECOMPILER ERROR at PC31: No list found for R1 , SetList fails

  -- DECOMPILER ERROR at PC32: Overwrote pending register: R2 in 'AssignReg'

  -- DECOMPILER ERROR at PC33: Overwrote pending register: R3 in 'AssignReg'

  for l_0_5,l_0_6 in (".xls->")(".xlsx->") do
    -- DECOMPILER ERROR at PC36: Overwrote pending register: R7 in 'AssignReg'

    -- DECOMPILER ERROR at PC38: Overwrote pending register: R8 in 'AssignReg'

    -- DECOMPILER ERROR at PC39: Overwrote pending register: R9 in 'AssignReg'

    -- DECOMPILER ERROR at PC40: Overwrote pending register: R10 in 'AssignReg'

    local l_0_7, l_0_8 = ((".xlsm->").find)(".xlsb->", ".xltx->", ".xltm->", true)
    if l_0_8 ~= nil then
      local l_0_9 = (string.len)(l_0_0)
      if l_0_9 <= l_0_8 or l_0_8 < 6 then
        return mp.CLEAN
      end
      if (mp.get_mpattribute)("BM_XML_FILE") then
        (mp.set_mpattribute)("LuaXmlInOOFile")
      else
        if (mp.get_mpattribute)("Lua:LNKExt") then
          (mp.set_mpattribute)("LuaLNKOOFile")
        else
          if (mp.get_mpattribute)("Lua:VBSExt") then
            (mp.set_mpattribute)("LuaVbsInOOFile")
          else
            if (mp.get_mpattribute)("Lua:HTAExt") then
              (mp.set_mpattribute)("LuaHtaInOOFile")
            else
              if (mp.get_mpattribute)("Lua:URLExt") then
                (mp.set_mpattribute)("LuaUrlInOOFile")
              else
                if (mp.get_mpattribute)("Nscript:Type_ps") then
                  (mp.set_mpattribute)("LuaPSInOOFile")
                end
              end
            end
          end
        end
      end
    end
  end
  do return mp.CLEAN end
  -- WARNING: undefined locals caused missing assignments!
end

