function onLogin(cid)
    local house_id = getHouseByPlayerGUID(getPlayerGUID(cid))
    
    if not isPremium(cid) and house_id > 0 then
        doPlayerSendTextMessage(cid, 27, "You lost your house.")
        setHouseOwner(house_id, NO_OWNER_PHRASE, true)
    end
    return true
end