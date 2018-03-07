--Example change voc and masterpos--

function onUse(cid, item, frompos, item2, topos)
	if item.uid==50110 then
		newpos = {x=32726, y=31587, z=10}
		doPlayerSetTown(cid, 14)
		doPlayerSendTextMessage(cid,22,"Você acabou de virar morador de Hellgate!")
		doTeleportThing(cid,newpos)
		doSendMagicEffect(newpos,12)
		return 1
	end
end