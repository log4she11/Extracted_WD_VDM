-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/21158.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("lua_injector_cl_ep") == false then
  return mp.CLEAN
end
if (hstrlog[1]).matched then
  (mp.set_mpattribute)("InjCLT!01" .. "Yaparih")
else
  if (hstrlog[2]).matched then
    (mp.set_mpattribute)("InjCLT!01" .. "thissshit")
  else
    if (hstrlog[3]).matched then
      (mp.set_mpattribute)("InjCLT!01" .. "dressforless")
    else
      if (hstrlog[4]).matched then
        (mp.set_mpattribute)("InjCLT!01" .. "MunchenGood")
      else
        if (hstrlog[5]).matched then
          (mp.set_mpattribute)("InjCLT!01" .. "Nuremberg")
        else
          if (hstrlog[6]).matched then
            (mp.set_mpattribute)("InjCLT!01" .. "goingbacksoon")
          end
        end
      end
    end
  end
end
return mp.CLEAN

