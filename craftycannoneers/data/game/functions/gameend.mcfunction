scoreboard players add $EndTime CmdData 1

execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1..10 run title @a title {"text":"It's a tie!","color":"gray"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1..10 run title @a[team=!Lobby,team=!Spectator,team=!Developer] subtitle {"text":"You had one job...","color":"dark_gray"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1..10 run title @a[team=!Purple,team=!Orange] subtitle {"text":" ","color":"dark_gray"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1 as @a[team=!Lobby,team=!Spectator,team=!Developer] at @s run playsound entity.wither.hurt master @s ~ ~ ~ 1 0

execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1..10 run title @a title {"text":"Orange Team Won!","color":"gold"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1..10 run title @a[team=Orange] subtitle {"text":"Well played!","color":"green"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1..10 run title @a[team=Purple] subtitle {"text":"Better luck next time...","color":"red"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1..10 run title @a[team=!Purple,team=!Orange] subtitle {"text":" ","color":"dark_gray"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 as @a[team=Orange] at @s run playsound wingame master @s ~ ~ ~ 1 1.3
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 as @a[team=Purple] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2

execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1..10 run title @a title {"text":"Purple Team Won!","color":"dark_purple"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1..10 run title @a[team=Purple] subtitle {"text":"Well played!","color":"green"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1..10 run title @a[team=Orange] subtitle {"text":"Better luck next time...","color":"red"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1..10 run title @a[team=!Purple,team=!Orange] subtitle {"text":" ","color":"dark_gray"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 as @a[team=Purple] at @s run playsound wingame master @s ~ ~ ~ 1 1.3
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 as @a[team=Orange] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1 2

#Explosion animation
execute if score $WinningTeam CmdData matches 1 run particle explosion 72 -28 -55 12 12 4 0.1 10 force
execute if score $WinningTeam CmdData matches 1 run particle lava 72 -28 -55 12 12 4 0.1 12 force
execute if score $WinningTeam CmdData matches 1 run particle large_smoke 72 -28 -55 12 12 4 0.1 8 force
execute if score $WinningTeam CmdData matches 2 run particle explosion 68 -28 55 12 12 4 0.1 10 force
execute if score $WinningTeam CmdData matches 2 run particle lava 68 -28 55 12 12 4 0.1 12 force
execute if score $WinningTeam CmdData matches 2 run particle large_smoke 68 -28 55 12 12 4 0.1 8 force

execute if score $EndTime CmdData matches 1 run tag @e[type=marker,tag=joinpad] add Locked
execute if score $EndTime CmdData matches 1 run function game:mvpstats/check
execute if score $EndTime CmdData matches 1 run scoreboard players remove @a[team=Purple,scores={GamesPlayed=1..}] GamesPlayed 1
execute if score $EndTime CmdData matches 1 run scoreboard players remove @a[team=Orange,scores={GamesPlayed=1..}] GamesPlayed 1
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator,team=!Developer] resistance 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator,team=!Developer] instant_health 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator,team=!Developer] regeneration 1000000 100 true
execute if score $EndTime CmdData matches 1.. if score $WinningTeam CmdData matches 1 run effect give @a[team=Purple] weakness 1000000 100 true
execute if score $EndTime CmdData matches 1.. if score $WinningTeam CmdData matches 2 run effect give @a[team=Orange] weakness 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator,team=!Developer] fire_resistance 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator,team=!Developer] conduit_power 1000000 100 true
execute if score $EndTime CmdData matches 1.. run gamerule fallDamage false

execute if score $EndTime CmdData matches 150 as @a[team=!Lobby,team=!Spectator,team=!Developer] run gamemode spectator
execute if score $EndTime CmdData matches 150 run effect clear @a[team=!Lobby,team=!Spectator,team=!Developer]
execute if score $EndTime CmdData matches 250.. run function game:forcestop

#> Firework purple
execute if score $EndTime CmdData matches 20 if score $WinningTeam CmdData matches 2 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 30 if score $WinningTeam CmdData matches 2 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 40 if score $WinningTeam CmdData matches 2 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework

execute if score $EndTime CmdData matches 100 if score $WinningTeam CmdData matches 2 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 105 if score $WinningTeam CmdData matches 2 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 110 if score $WinningTeam CmdData matches 2 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 115 if score $WinningTeam CmdData matches 2 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 120 if score $WinningTeam CmdData matches 2 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework

#> Firework orange
execute if score $EndTime CmdData matches 20 if score $WinningTeam CmdData matches 1 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 30 if score $WinningTeam CmdData matches 1 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 40 if score $WinningTeam CmdData matches 1 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework

execute if score $EndTime CmdData matches 100 if score $WinningTeam CmdData matches 1 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 105 if score $WinningTeam CmdData matches 1 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 110 if score $WinningTeam CmdData matches 1 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 115 if score $WinningTeam CmdData matches 1 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 120 if score $WinningTeam CmdData matches 1 run tag @e[type=armor_stand,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework

execute if score $EndTime CmdData matches 41 run tag @e[type=#game:cannon,tag=cannon,tag=Firework2] remove Firework2
execute if score $EndTime CmdData matches 121 run tag @e[type=#game:cannon,tag=cannon,tag=Firework2] remove Firework2

#> End fireworks
execute as @e[type=#game:cannon,tag=cannon,tag=Firework] at @s run function game:endfirework/cannons
execute as @e[type=armor_stand,tag=EndFirework] at @s run function game:endfirework/main