-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/136.luac 

-- params : ...
-- function num : 0
do
  local l_0_0, l_0_1 = (mp.getfilename)((mp.bitor)(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE)) or ""
  -- DECOMPILER ERROR at PC13: Confused about usage of register: R0 in 'UnsetPending'

  local l_0_2, l_0_3 = , l_0_0:match("(.+)%.([^.]+)$")
  if l_0_0 ~= nil and l_0_3 ~= nil then
    local l_0_4 = nil
    if ({doc = true, docm = true, xls = true, xlsm = true, pdf = true})[l_0_4] == true then
      local l_0_5 = nil
      for l_0_9,l_0_10 in pairs({"untitled", "img", "receipt", "invoice", "steam", "min", "nuevo", "pic", "jpg", "inc", "crack", "files", "backup", "plugin", "setup", "pdf", "acc", "cracked", "dhl", "instr"}) do
        local l_0_6 = nil
        -- DECOMPILER ERROR at PC56: Confused about usage of register: R9 in 'UnsetPending'

        if l_0_3:sub("steam", 1, "true") then
          return mp.INFECTED
        end
      end
    end
  end
  do
    l_0_5 = mp
    l_0_5 = l_0_5.CLEAN
    return l_0_5
  end
end

