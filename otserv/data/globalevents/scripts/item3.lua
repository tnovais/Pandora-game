local pos = {

{x=32740, y=32387, z=7},
} 

local count = 1 -- quantos itens irao aparecer no tile.
local itemid = 2390

function onThink(interval)


doCreateItem(itemid, count, pos[math.random(#pos)])

return true
end