-- Decompiled using luadec 2.2 rev: 895d923 for Lua 5.1 from https://github.com/viruscamp/luadec
-- Command line: ./lua/19180.luac 

-- params : ...
-- function num : 0
if (mp.get_mpattribute)("lua_injector_cl_ep") == false then
  return mp.CLEAN
end
if (hstrlog[1]).matched then
  (mp.set_mpattribute)("InjCLT!02" .. "itsapproaching")
else
  if (hstrlog[2]).matched then
    (mp.set_mpattribute)("InjCLT!02" .. "thereyougo")
  end
end
return mp.LOWFI

