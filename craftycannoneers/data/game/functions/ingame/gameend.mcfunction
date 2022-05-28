bossbar set purpleship players @a[team=!Lobby]
bossbar set orangeship players @a[team=!Lobby]

tag @e[tag=joinpad] add Locked

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
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 as @a[team=Purple] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 2

execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 run title @a title {"text":"Purple Team Won!","color":"dark_purple"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 run title @a[team=Purple] subtitle {"text":"Well played!","color":"green"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 run title @a[team=Orange] subtitle {"text":"Better luck next time...","color":"red"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 run title @a[team=!Purple,team=!Orange] subtitle {"text":" ","color":"dark_gray"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 as @a[team=Purple] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.3
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 as @a[team=Orange] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 2

execute if score $EndTime CmdData matches 1 run function game:mvpstats/check
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator] resistance 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator] instant_health 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator] regeneration 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator] weakness 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator] fire_resistance 1000000 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator] conduit_power 1000000 100 true
execute if score $EndTime CmdData matches 1.. run gamerule fallDamage false

execute if score $EndTime CmdData matches 150 run gamemode spectator @a[team=!Lobby,team=!Spectator]
execute if score $EndTime CmdData matches 250.. run function game:forcestop

#> Firework purple
execute if score $EndTime CmdData matches 20 if score $WinningTeam CmdData matches 2 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 30 if score $WinningTeam CmdData matches 2 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 40 if score $WinningTeam CmdData matches 2 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework

execute if score $EndTime CmdData matches 100 if score $WinningTeam CmdData matches 2 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 105 if score $WinningTeam CmdData matches 2 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 110 if score $WinningTeam CmdData matches 2 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 115 if score $WinningTeam CmdData matches 2 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 120 if score $WinningTeam CmdData matches 2 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
#> Firework orange
execute if score $EndTime CmdData matches 20 if score $WinningTeam CmdData matches 1 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 30 if score $WinningTeam CmdData matches 1 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 40 if score $WinningTeam CmdData matches 1 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework

execute if score $EndTime CmdData matches 100 if score $WinningTeam CmdData matches 1 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 105 if score $WinningTeam CmdData matches 1 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 110 if score $WinningTeam CmdData matches 1 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 115 if score $WinningTeam CmdData matches 1 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 120 if score $WinningTeam CmdData matches 1 run tag @e[tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework

execute if score $EndTime CmdData matches 41 run tag @e[tag=cannon,tag=Firework2] remove Firework2
execute if score $EndTime CmdData matches 121 run tag @e[tag=cannon,tag=Firework2] remove Firework2


execute as @e[tag=cannon,tag=Firework,predicate=cannons:ships/purple] at @s run summon armor_stand ~ ~ ~ {Rotation:[0.0f,0.0f],Pose:{Head:[329f,0f,0f]},Tags:["EndFirework","Purple"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:41}}]}
execute as @e[tag=cannon,tag=Firework,predicate=cannons:ships/orange] at @s run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],Pose:{Head:[329f,0f,0f]},Tags:["EndFirework","Orange"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:41}}]}




execute as @e[tag=cannon,tag=Firework,tag=!Firework2] at @s run particle explosion ^ ^1.1 ^2 0.1 0.1 0.1 0.1 3 force
execute as @e[tag=cannon,tag=Firework,tag=!Firework2] at @s run particle flame ^ ^1.1 ^2 0.1 0.1 0.1 0.3 6 force
execute as @e[tag=cannon,tag=Firework,tag=!Firework2] at @s run particle minecraft:campfire_cosy_smoke ^ ^0.8 ^2 0.1 0.1 0.1 0.02 10 force
execute as @e[tag=cannon,tag=Firework,tag=!Firework2] at @s run particle lava ^ ^1.1 ^2 0.1 0.1 0.1 0.02 10 force
execute as @e[tag=cannon,tag=Firework,tag=!Firework2] at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 6 0.8
execute as @e[tag=cannon,tag=Firework,tag=!Firework2] at @s run playsound cannonshot master @a ~ ~ ~ 6 1.6
execute as @e[tag=cannon,tag=Firework,tag=!Firework2] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.6
execute as @e[tag=cannon,tag=Firework,tag=!Firework2] at @s run tag @s add Firework2


execute as @e[tag=cannon,tag=Firework] at @s run tag @s remove Firework

scoreboard players add @e[tag=EndFirework] CmdData 1
execute as @e[tag=EndFirework] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0.1 2 force
execute as @e[tag=EndFirework,scores={CmdData=1..10}] at @s run tp @s ^ ^0.4 ^1.5
execute as @e[tag=EndFirework,scores={CmdData=11..20}] at @s run tp @s ^ ^0.8 ^1.5
execute as @e[tag=EndFirework,scores={CmdData=21..}] at @s run tp @s ^ ^1.4 ^1
execute as @e[tag=EndFirework,scores={CmdData=21}] at @s run data merge entity @s {Pose:{Head:[303f,0f,0f]}}
execute as @e[tag=EndFirework,tag=Purple,scores={CmdData=27}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;8073150],FadeColors:[I;12801229]}],Flight:0}}}}
execute as @e[tag=EndFirework,tag=Orange,scores={CmdData=27}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;15435844],FadeColors:[I;14602026]}],Flight:0}}}}
kill @e[tag=EndFirework,scores={CmdData=27..}]