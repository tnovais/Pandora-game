local pos = {

{x=32670, y=31639, z=15},
} 

local count = 1 -- quantos itens irao aparecer no tile.
local itemid = 2523

function onThink(interval)


doCreateItem(itemid, count, pos[math.random(#pos)])

return true
end