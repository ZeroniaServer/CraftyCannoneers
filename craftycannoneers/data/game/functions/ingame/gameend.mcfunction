scoreboard players add $EndTime CmdData 1

execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1 run title @a title {"text":"It's a tie!","color":"gray"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1 run title @a[team=!Lobby,team=!Spectator] subtitle {"text":"You had one job...","color":"dark_gray"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1 run title @a[team=!Purple,team=!Orange] subtitle {"text":" ","color":"dark_gray"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1 as @a[team=!Lobby,team=!Spectator] at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 1 0

execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 run title @a title {"text":"Orange Team Won!","color":"gold"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 run title @a[team=Orange] subtitle {"text":"Well played!","color":"green"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 run title @a[team=Purple] subtitle {"text":"Better luck next time...","color":"red"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 run title @a[team=!Purple,team=!Orange] subtitle {"text":" ","color":"dark_gray"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 as @a[team=Orange] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.3
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 as @a[team=Purple] at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 2

execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 run title @a title {"text":"Purple Team Won!","color":"dark_purple"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 run title @a[team=Orange] subtitle {"text":"Well played!","color":"green"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 run title @a[team=Purple] subtitle {"text":"Better luck next time...","color":"red"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 run title @a[team=!Purple,team=!Orange] subtitle {"text":" ","color":"dark_gray"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 as @a[team=Purple] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.3
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 as @a[team=Orange] at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 2

execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Orange] resistance 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Orange] instant_health 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Orange] regeneration 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Orange] weakness 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Orange] fire_resistance 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Orange] conduit_power 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Orange] jump_boost 1000000 255 true

execute if score $EndTime CmdData matches 150 run gamemode spectator @a[team=!Lobby,team=!Spectator]
execute if score $EndTime CmdData matches 250.. run function game:forcestop