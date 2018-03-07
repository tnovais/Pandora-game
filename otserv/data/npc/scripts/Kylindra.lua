local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

function greetCallback(cid)
	if getPlayerSex(cid) == 1 then
	npcHandler:setMessage(MESSAGE_GREET, "Olá, bem vindo a Hellgate em Mainland! Gostaria de saber sobre a Sword of Fury? ".. getPlayerName(cid) .."!")
	return true
	else
	npcHandler:setMessage(MESSAGE_GREET, "Hello, bem vindo a Hellgate em Mainland! ".. getPlayerName(cid) .."!")
	return true
	end	
end	
npcHandler:setCallback(CALLBACK_GREET, greetCallback)

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

keywordHandler:addKeyword({'hellgate'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Você está dentro da Hellgate em Mainland."})
keywordHandler:addKeyword({'sword of fury'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A Sword Of Fury poderá ser obtida, porem a um preço a se pagar."})
keywordHandler:addKeyword({'main'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sim! Se você for atrás da sword of fury em mainland, terá que enfrentar bichos fortes"})
keywordHandler:addKeyword({'rook'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Para desistir da Sword of Fury apenas entre no portal ao sul. Para continuar e achar a espada você precisara sair da terrivel Hellgate!"})
keywordHandler:addKeyword({'preço'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sim uma vez que você continuar você deverá achar a quest e sair de Hellgate."})
keywordHandler:addKeyword({'pagar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sim uma vez que você continuar você deverá achar a quest e sair de Hellgate."})
keywordHandler:addKeyword({'continuar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Para você continuar apenas entre no portal atrás de mim!."})
keywordHandler:addKeyword({'voltar'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Para desistir da Sword of Fury e voltar para rook apenas entre no portal ao sul."})


npcHandler:addModule(FocusModule:new())
