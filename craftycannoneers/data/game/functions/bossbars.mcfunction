bossbar set lobbybar players @a[team=Lobby]
execute unless score $gamestate CmdData matches 3.. run bossbar set lobbybar color green
execute unless score $gamestate CmdData matches 3.. run bossbar set lobbybar name {"translate":"game.in_progress","bold":true,"color":"green"}
bossbar set lobbybar value 10

bossbar set purpleship3 players @a[team=Spectator]
bossbar set purpleship players @a[team=!Lobby,team=!Spectator,team=!Orange]
bossbar set orangeship players @a[team=!Lobby,team=!Orange]
bossbar set orangeship2 players @a[team=Orange]
bossbar set purpleship2 players @a[team=Orange]

bossbar set purpleship name ["",{"translate":"%1$s (%2$s): ","with":[{"translate":"game.purple"},{"translate":"game.you"}],"color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"translate":"%1$s: ","with":[{"translate":"game.orange"}],"color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]
bossbar set orangeship2 name ["",{"translate":"%1$s (%2$s): ","with":[{"translate":"game.orange"},{"translate":"game.you"}],"color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"translate":"%1$s: ","with":[{"translate":"game.purple"}],"color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]
bossbar set purpleship3 name ["",{"translate":"%1$s: ","with":[{"translate":"game.purple"}],"color":"dark_purple"},{"text":"❤","color":"red"},{"score":{"name":"$PurpleHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"},{"text":" | ","color":"dark_gray","bold":true},{"translate":"%1$s: ","with":[{"translate":"game.orange"}],"color":"gold"},{"text":"❤","color":"red"},{"score":{"name":"$OrangeHP","objective":"CmdData"},"color":"gray"},"/",{"score":{"name":"$ShipHP","objective":"CmdData"},"color":"gray"}]

execute store result bossbar purpleship max run scoreboard players get $ShipHP CmdData
execute store result bossbar purpleship2 max run scoreboard players get $ShipHP CmdData
execute store result bossbar purpleship3 max run scoreboard players get $ShipHP CmdData
execute store result bossbar orangeship max run scoreboard players get $ShipHP CmdData
execute store result bossbar orangeship2 max run scoreboard players get $ShipHP CmdData