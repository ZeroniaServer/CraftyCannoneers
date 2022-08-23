tag @e[type=marker,tag=joinpad] add Locked

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

#TODO OPTIMIZE
execute as @e[type=#game:cannon,tag=cannon,tag=Firework,predicate=cannons:ships/purple] at @s run summon armor_stand ~ ~ ~ {Rotation:[0.0f,0.0f],Pose:{Head:[329f,0f,0f]},Tags:["EndFirework","Purple","new","new2","new3"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:41}}]}
execute as @e[type=#game:cannon,tag=cannon,tag=Firework,predicate=cannons:ships/purple] at @s run summon marker ^ ^2 ^3 {Tags:["LightFlash","cannon"]}
execute as @e[type=#game:cannon,tag=cannon,tag=Firework,predicate=cannons:ships/orange] at @s run summon armor_stand ~ ~ ~ {Rotation:[180.0f,0.0f],Pose:{Head:[329f,0f,0f]},Tags:["EndFirework","Orange","new","new2","new3"],ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:41}}]}
execute as @e[type=#game:cannon,tag=cannon,tag=Firework,predicate=cannons:ships/orange] at @s run summon marker ^ ^2 ^3 {Tags:["LightFlash","cannon"]}



execute as @e[type=#game:cannon,tag=cannon,tag=Firework,tag=!Firework2] at @s run particle explosion ^ ^1.1 ^2 0.1 0.1 0.1 0.1 3 force
execute as @e[type=#game:cannon,tag=cannon,tag=Firework,tag=!Firework2] at @s run particle flame ^ ^1.1 ^2 0.1 0.1 0.1 0.3 6 force
execute as @e[type=#game:cannon,tag=cannon,tag=Firework,tag=!Firework2] at @s run particle campfire_cosy_smoke ^ ^0.8 ^2 0.1 0.1 0.1 0.02 10 force
execute as @e[type=#game:cannon,tag=cannon,tag=Firework,tag=!Firework2] at @s run particle lava ^ ^1.1 ^2 0.1 0.1 0.1 0.02 10 force
execute as @e[type=#game:cannon,tag=cannon,tag=Firework,tag=!Firework2] at @s run playsound entity.firework_rocket.launch master @a ~ ~ ~ 6 0.8
execute as @e[type=#game:cannon,tag=cannon,tag=Firework,tag=!Firework2] at @s run playsound cannonshot master @a ~ ~ ~ 6 1.6
execute as @e[type=#game:cannon,tag=cannon,tag=Firework,tag=!Firework2] at @s run playsound cannonshot_distant master @a[distance=15..] ~ ~ ~ 8 1.6
execute as @e[type=#game:cannon,tag=cannon,tag=Firework,tag=!Firework2] at @s run tag @s add Firework2


execute as @e[type=#game:cannon,tag=cannon,tag=Firework] run tag @s remove Firework

execute as @e[type=armor_stand,tag=EndFirework,tag=new] run scoreboard players set @s RNGmax 24
execute as @e[type=armor_stand,tag=EndFirework,tag=new] store result score @s RNGscore run data get entity @s UUID[0]
execute as @e[type=armor_stand,tag=EndFirework,tag=new] run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @e[type=armor_stand,tag=EndFirework,tag=new] store result score @s eyeclick run scoreboard players get @s RNGscore
execute as @e[type=armor_stand,tag=EndFirework,tag=new] run scoreboard players reset @s RNGscore
execute as @e[type=armor_stand,tag=EndFirework,tag=new] run tag @s remove new

execute as @e[type=armor_stand,tag=EndFirework,tag=new2] run scoreboard players set @s RNGmax 4
execute as @e[type=armor_stand,tag=EndFirework,tag=new2] store result score @s RNGscore run data get entity @s UUID[1]
execute as @e[type=armor_stand,tag=EndFirework,tag=new2] run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @e[type=armor_stand,tag=EndFirework,tag=new2,scores={RNGscore=..0}] run tag @s add Type1
execute as @e[type=armor_stand,tag=EndFirework,tag=new2,scores={RNGscore=1}] run tag @s add Type2
execute as @e[type=armor_stand,tag=EndFirework,tag=new2,scores={RNGscore=2}] run tag @s add Type3
execute as @e[type=armor_stand,tag=EndFirework,tag=new2,scores={RNGscore=3..}] run tag @s add Type4
execute as @e[type=armor_stand,tag=EndFirework,tag=new2] run tag @s remove new2

execute as @e[type=armor_stand,tag=EndFirework,tag=new3] run scoreboard players set @s RNGmax 11
execute as @e[type=armor_stand,tag=EndFirework,tag=new3] store result score @s RNGscore run data get entity @s UUID[2]
execute as @e[type=armor_stand,tag=EndFirework,tag=new3] run scoreboard players operation @s RNGscore %= @s RNGmax
execute as @e[type=armor_stand,tag=EndFirework,tag=new3,scores={RNGscore=1..6}] run tag @s add RotLeft
execute as @e[type=armor_stand,tag=EndFirework,tag=new3,scores={RNGscore=7..}] run tag @s add RotRight
execute as @e[type=armor_stand,tag=EndFirework,tag=new3,scores={RNGscore=7..}] run scoreboard players remove @s RNGscore 6
execute as @e[type=armor_stand,tag=EndFirework,tag=new3] at @s run function game:ingame/fireworkrotation
execute as @e[type=armor_stand,tag=EndFirework,tag=new3] run tag @s remove new3

scoreboard players add @e[type=armor_stand,tag=EndFirework] CmdData 1
execute as @e[type=armor_stand,tag=EndFirework] at @s run particle firework ~ ~ ~ 0 0 0 0.1 2 force
execute as @e[type=armor_stand,tag=EndFirework,scores={CmdData=1..10}] at @s run tp @s ^ ^0.4 ^1.5
execute as @e[type=armor_stand,tag=EndFirework,scores={CmdData=11..20}] at @s run tp @s ^ ^0.8 ^1.5
execute as @e[type=armor_stand,tag=EndFirework,scores={CmdData=21..}] at @s run tp @s ^ ^1.4 ^1
execute as @e[type=armor_stand,tag=EndFirework,scores={CmdData=21}] at @s run data merge entity @s {Pose:{Head:[303f,0f,0f]}}
execute as @e[type=armor_stand,tag=EndFirework,scores={CmdData=21,eyeclick=1..}] at @s run scoreboard players operation @s CmdData += @s eyeclick
execute as @e[type=armor_stand,tag=Type1,tag=EndFirework,tag=Purple,scores={CmdData=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;8073150],FadeColors:[I;12801229]}],Flight:0}}}}
execute as @e[type=armor_stand,tag=Type1,tag=EndFirework,tag=Orange,scores={CmdData=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1,Trail:1,Colors:[I;15435844],FadeColors:[I;14602026]}],Flight:0}}}}
execute as @e[type=armor_stand,tag=Type2,tag=EndFirework,tag=Purple,scores={CmdData=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;8073150],FadeColors:[I;12801229]}],Flight:0}}}}
execute as @e[type=armor_stand,tag=Type2,tag=EndFirework,tag=Orange,scores={CmdData=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;15435844],FadeColors:[I;14602026]}],Flight:0}}}}
execute as @e[type=armor_stand,tag=Type3,tag=EndFirework,tag=Purple,scores={CmdData=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;8073150],FadeColors:[I;12801229]}],Flight:0}}}}
execute as @e[type=armor_stand,tag=Type3,tag=EndFirework,tag=Orange,scores={CmdData=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;15435844],FadeColors:[I;14602026]}],Flight:0}}}}
execute as @e[type=armor_stand,tag=Type4,tag=EndFirework,tag=Purple,scores={CmdData=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;8073150],FadeColors:[I;12801229]}],Flight:0}}}}
execute as @e[type=armor_stand,tag=Type4,tag=EndFirework,tag=Orange,scores={CmdData=30..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;15435844],FadeColors:[I;14602026]}],Flight:0}}}}
kill @e[type=armor_stand,tag=EndFirework,scores={CmdData=30..}]