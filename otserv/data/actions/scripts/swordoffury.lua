function onUse(cid, item, frompos, item2, topos)
                            
-- 1 = Sorc, 2 = Druid, 3 = Pally, 4 = Kina --                                                            
local t = {[0] = {id = 2383, quant = 1, stor = 15152}}
local voc = t[getPlayerVocation(cid)]                       


        if item.uid == 15156 then
             if voc then
                   if getPlayerStorageValue(cid, voc.stor) == -1 then
                         doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, 'Muito bom! Você conseguiu concluir a quest da Sword of Fury! '..voc.quant..' '..getItemNameById(voc.id)..'!')
                         doPlayerAddItem(cid, voc.id, voc.quant)
                         setPlayerStorageValue(cid, voc.stor, 1) 
                   else
                         doPlayerSendCancel(cid, "Você já fez essa quest.")
                   end
            end
            
            return TRUE
end
end