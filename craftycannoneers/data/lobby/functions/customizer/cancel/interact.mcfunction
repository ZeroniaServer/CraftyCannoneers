execute if score $gamestate CmdData matches 0 if score $mcancelcount CmdData matches 0 run scoreboard players set $mcancel CmdData 1
execute if score $gamestate CmdData matches 0 if score $mcancelcount CmdData matches 0 run function game:forcestop

execute if score $gamestate CmdData matches 0 unless score $mcancel CmdData matches -1 if score $mcancelcount CmdData matches 2.. run tellraw @s {"translate":"chat.cannot_cancel.seconds","color":"red","with":[{"score":{"name":"$mcancelcount","objective":"CmdData"},"color":"white","bold":true}]}
execute if score $gamestate CmdData matches 0 unless score $mcancel CmdData matches -1 if score $mcancelcount CmdData matches 1 run tellraw @s {"translate":"chat.cannot_cancel.second","color":"red","with":[{"text":"1","color":"white","bold":true}]}

execute unless score $gamestate CmdData matches 2.. if score $mcancel CmdData matches -1 run tellraw @s {"translate":"chat.cannot_cancel.players","color":"red"}

execute if score $gamestate CmdData matches 2.. run tellraw @s {"translate":"chat.cannot_cancel.game","color":"red"}

execute positioned -54 -24 9 run playsound ui.button.click master @s ~ ~ ~ 1 1
scoreboard players set @s cancelMatch 0
scoreboard players add @s clickcooldown 1