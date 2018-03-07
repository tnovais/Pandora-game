local pos = {

{x=32229, y=32270, z=10},
} 

local count = 1 -- quantos itens irao aparecer no tile.
local itemid = 2474

function onThink(interval)


doCreateItem(itemid, count, pos[math.random(#pos)])

return true
end