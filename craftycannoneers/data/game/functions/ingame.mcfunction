bossbar set lobbybar color green
bossbar set lobbybar name {"text":"A game is currently in progress!","bold":true,"color":"green"}

function game:ingame/chestspawning
function game:ingame/arrowpickup
function game:ingame/regensystem

setblock 88 -27 55 minecraft:spruce_slab[type=top]
spawnpoint @a[team=Orange] 88 -26 55 90

setblock 52 -27 -55 minecraft:spruce_slab[type=top]
spawnpoint @a[team=Purple] 52 -26 -55 -90

bossbar set purpleship name ["",{"text":"Purple: ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Orange: ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]

#> Bossbars
execute store result bossbar purpleship max run scoreboard players get $ShipHP CmdData
execute store result bossbar orangeship max run scoreboard players get $ShipHP CmdData

execute store result bossbar purpleship value run scoreboard players get $PurpleHP CmdData
execute store result bossbar orangeship value run scoreboard players get $OrangeHP CmdData

execute unless score $DamagePurple CmdData matches 1.. run bossbar set purpleship color purple
execute unless score $DamageOrange CmdData matches 1.. run bossbar set orangeship color yellow

execute if score $DamagePurple CmdData matches 1.. run bossbar set purpleship color white
execute if score $DamageOrange CmdData matches 1.. run bossbar set orangeship color white

execute if score $DamagePurple CmdData matches 1.. if score $PurpleHP CmdData matches 1.. run scoreboard players remove $PurpleHP CmdData 1
execute if score $DamagePurple CmdData matches 1.. run scoreboard players remove $DamagePurple CmdData 1
execute if score $DamageOrange CmdData matches 1.. if score $OrangeHP CmdData matches 1.. run scoreboard players remove $OrangeHP CmdData 1
execute if score $DamageOrange CmdData matches 1.. run scoreboard players remove $DamageOrange CmdData 1
execute store result bossbar purpleship value run scoreboard players get $PurpleHP CmdData
execute store result bossbar orangeship value run scoreboard players get $OrangeHP CmdData

execute if score $DamagePurple CmdData matches 1.. if score $PurpleHP CmdData matches 1.. run scoreboard players remove $PurpleHP CmdData 1
execute if score $DamagePurple CmdData matches 1.. run scoreboard players remove $DamagePurple CmdData 1
execute if score $DamageOrange CmdData matches 1.. if score $OrangeHP CmdData matches 1.. run scoreboard players remove $OrangeHP CmdData 1
execute if score $DamageOrange CmdData matches 1.. run scoreboard players remove $DamageOrange CmdData 1
execute store result bossbar purpleship value run scoreboard players get $PurpleHP CmdData
execute store result bossbar orangeship value run scoreboard players get $OrangeHP CmdData

execute if score $DamagePurple CmdData matches 1.. if score $PurpleHP CmdData matches 1.. run scoreboard players remove $PurpleHP CmdData 1
execute if score $DamagePurple CmdData matches 1.. run scoreboard players remove $DamagePurple CmdData 1
execute if score $DamageOrange CmdData matches 1.. if score $OrangeHP CmdData matches 1.. run scoreboard players remove $OrangeHP CmdData 1
execute if score $DamageOrange CmdData matches 1.. run scoreboard players remove $DamageOrange CmdData 1
execute store result bossbar purpleship value run scoreboard players get $PurpleHP CmdData
execute store result bossbar orangeship value run scoreboard players get $OrangeHP CmdData

execute if score $DamagePurple CmdData matches 1.. if score $PurpleHP CmdData matches 1.. run scoreboard players remove $PurpleHP CmdData 1
execute if score $DamagePurple CmdData matches 1.. run scoreboard players remove $DamagePurple CmdData 1
execute if score $DamageOrange CmdData matches 1.. if score $OrangeHP CmdData matches 1.. run scoreboard players remove $OrangeHP CmdData 1
execute if score $DamageOrange CmdData matches 1.. run scoreboard players remove $DamageOrange CmdData 1
execute store result bossbar purpleship value run scoreboard players get $PurpleHP CmdData
execute store result bossbar orangeship value run scoreboard players get $OrangeHP CmdData

bossbar set purpleship players @a[team=!Lobby]
bossbar set orangeship players @a[team=!Lobby]

execute as @a[scores={death=1..},team=!Lobby,team=!Spectator] run function game:givegear
scoreboard players reset @a[scores={death=1..}] death


execute unless score $TimeLimit CmdData matches 69420.. run function game:ingame/timer

#> Game end criteria
#shiphp
execute unless score $gamestate CmdData matches 3.. if score $PurpleHP CmdData matches ..0 run scoreboard players set $WinningTeam CmdData 1
execute unless score $gamestate CmdData matches 3.. if score $OrangeHP CmdData matches ..0 run scoreboard players set $WinningTeam CmdData 2
execute unless score $gamestate CmdData matches 3.. if score $PurpleHP CmdData matches ..0 run bossbar set purpleship name ["",{"text":"Purple: ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Orange: ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]
execute unless score $gamestate CmdData matches 3.. if score $OrangeHP CmdData matches ..0 run bossbar set purpleship name ["",{"text":"Purple: ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Orange: ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]

execute unless score $gamestate CmdData matches 3.. if score $WinningTeam CmdData matches 1.. run scoreboard players set $gamestate CmdData 3
#timer
execute unless score $gamestate CmdData matches 3.. if score $ticks CmdData matches ..0 if score $PurpleHP CmdData < $OrangeHP CmdData run scoreboard players set $WinningTeam CmdData 1
execute unless score $gamestate CmdData matches 3.. if score $ticks CmdData matches ..0 if score $OrangeHP CmdData < $PurpleHP CmdData run scoreboard players set $WinningTeam CmdData 2
execute unless score $gamestate CmdData matches 3.. if score $ticks CmdData matches ..0 if score $OrangeHP CmdData = $PurpleHP CmdData run scoreboard players set $WinningTeam CmdData 0
execute unless score $gamestate CmdData matches 3.. if score $ticks CmdData matches ..0 if score $PurpleHP CmdData < $OrangeHP CmdData run bossbar set purpleship name ["",{"text":"Purple: ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Orange: ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]
execute unless score $gamestate CmdData matches 3.. if score $ticks CmdData matches ..0 if score $OrangeHP CmdData < $PurpleHP CmdData run bossbar set purpleship name ["",{"text":"Purple: ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Orange: ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]
execute unless score $gamestate CmdData matches 3.. if score $ticks CmdData matches ..0 if score $OrangeHP CmdData = $PurpleHP CmdData run bossbar set purpleship name ["",{"text":"Purple: ","color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"text":"Orange: ","color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]
execute unless score $gamestate CmdData matches 3.. if score $ticks CmdData matches ..0 if score $PurpleHP CmdData < $OrangeHP CmdData run scoreboard players set $gamestate CmdData 3
execute unless score $gamestate CmdData matches 3.. if score $ticks CmdData matches ..0 if score $OrangeHP CmdData < $PurpleHP CmdData run scoreboard players set $gamestate CmdData 3
execute unless score $gamestate CmdData matches 3.. if score $ticks CmdData matches ..0 if score $OrangeHP CmdData = $PurpleHP CmdData run scoreboard players set $gamestate CmdData 3