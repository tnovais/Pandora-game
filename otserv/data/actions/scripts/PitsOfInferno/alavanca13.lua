function onUse(cid, item, frompos, item2, topos)
	wall1 = {x=32874, y=32365, z=13, stackpos=1}	
	getwall1 = getThingfromPos(wall1)

	if item.itemid == 1945 and getwall1.itemid == 1946 then
		doTransformItem(item.uid,item.itemid+1)
	elseif item.itemid == 1946 then
		doTransformItem(item.uid,item.itemid-1)	
	else
		doPlayerSendCancel(cid,"Sorry, not possible.")
	end

	return 1
end