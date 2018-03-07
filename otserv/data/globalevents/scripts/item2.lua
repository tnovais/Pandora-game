local pos = {

{x=32648, y=32257, z=7},
} 

local count = 1 -- quantos itens irao aparecer no tile.
local itemid = 2496

function onThink(interval)


doCreateItem(itemid, count, pos[math.random(#pos)])

return true
end