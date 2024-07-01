execute if score $gamestate CmdData matches 0 if score $OrangeReady CmdData matches 1 run data modify storage craftycannoneers:readysign Orange set value '{"translate":"game.ready_sign.format","color":"gold","with":[{"color":"gold","translate":"game.ready_sign.orange"},{"color":"#55FF55","text":"✔","bold":true}]}'
execute if score $gamestate CmdData matches 0 if score $OrangeReady CmdData matches 0 run data modify storage craftycannoneers:readysign Orange set value '{"translate":"game.ready_sign.format","color":"gold","with":[{"color":"gold","translate":"game.ready_sign.orange"},{"color":"red","text":"❌","bold":true}]}'
execute if score $gamestate CmdData matches 0 if score $PurpleReady CmdData matches 1 run data modify storage craftycannoneers:readysign Purple set value '{"translate":"game.ready_sign.format","color":"dark_purple","with":[{"color":"dark_purple","translate":"game.ready_sign.purple"},{"color":"#55FF55","text":"✔","bold":true}]}'
execute if score $gamestate CmdData matches 0 if score $PurpleReady CmdData matches 0 run data modify storage craftycannoneers:readysign Purple set value '{"translate":"game.ready_sign.format","color":"dark_purple","with":[{"color":"dark_purple","translate":"game.ready_sign.purple"},{"color":"red","text":"❌","bold":true}]}'
execute if score $gamestate CmdData matches 0 run data modify block -44 -28 0 front_text.messages[0] set value '{"clickEvent":{"action":"run_command","value":"trigger readyup"},"translate":"game.ready_sign.1","with":[{"translate":"game.ready_sign.click_here","color":"#00CC00"},{"translate":"game.ready_sign.ready_up","color":"#55FF55"},{"nbt":"Orange","storage":"craftycannoneers:readysign","interpret":true},{"nbt":"Purple","storage":"craftycannoneers:readysign","interpret":true}]}'
execute if score $gamestate CmdData matches 0 run data modify block -44 -28 0 front_text.messages[1] set value '{"translate":"game.ready_sign.2","with":[{"translate":"game.ready_sign.click_here","color":"#00CC00"},{"translate":"game.ready_sign.ready_up","color":"#55FF55"},{"nbt":"Orange","storage":"craftycannoneers:readysign","interpret":true},{"nbt":"Purple","storage":"craftycannoneers:readysign","interpret":true}]}'
execute if score $gamestate CmdData matches 0 run data modify block -44 -28 0 front_text.messages[2] set value '{"translate":"game.ready_sign.3","with":[{"translate":"game.ready_sign.click_here","color":"#00CC00"},{"translate":"game.ready_sign.ready_up","color":"#55FF55"},{"nbt":"Orange","storage":"craftycannoneers:readysign","interpret":true},{"nbt":"Purple","storage":"craftycannoneers:readysign","interpret":true}]}'
execute if score $gamestate CmdData matches 0 run data modify block -44 -28 0 front_text.messages[3] set value '{"translate":"game.ready_sign.4","with":[{"translate":"game.ready_sign.click_here","color":"#00CC00"},{"translate":"game.ready_sign.ready_up","color":"#55FF55"},{"nbt":"Orange","storage":"craftycannoneers:readysign","interpret":true},{"nbt":"Purple","storage":"craftycannoneers:readysign","interpret":true}]}'