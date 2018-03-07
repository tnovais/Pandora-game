function onLogin(cid)

local get_house = getHouseByPlayerGUID(getPlayerGUID(cid))

     if not isPremium(cid) and get_house then
     
            setHouseOwner(get_house, 0, true)
            
     return true
     end
end     