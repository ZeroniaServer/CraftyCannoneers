#######################################################
## PARKOUR: The system behind the Lobby Parkour Area ##
#######################################################

##Start parkour
execute as @a[team=Lobby,tag=!inParkour] at @s positioned ~ ~1 ~ if entity @e[type=marker,tag=parkourStart,limit=1,distance=..1.2] run tag @s add startParkour
execute as @a[team=Lobby,tag=startParkour] run tellraw @s [{"text":"Parkour Run Started!","color":"dark_green","bold":true}]
execute as @a[team=Lobby,tag=startParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1
execute as @a[team=Lobby,tag=startParkour] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.3
execute as @a[team=Lobby,tag=startParkour] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s
execute as @a[team=Lobby,tag=startParkour] run tag @s add inParkour
execute as @a[team=Lobby,tag=startParkour] run tag @s remove startParkour

##End parkour
execute as @a[team=Lobby,tag=inParkour] at @s positioned ~ ~1 ~ if entity @e[type=marker,tag=parkourEnd,limit=1,distance=..1.2] run tag @s add finishedParkour
execute as @a[team=Lobby,tag=finishedParkour,scores={parkourSecs=..9,parkourMins=..9}] run tellraw @a ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"text":"0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[team=Lobby,tag=finishedParkour,scores={parkourSecs=10..,parkourMins=..9}] run tellraw @a ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"text":"0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[team=Lobby,tag=finishedParkour,scores={parkourSecs=..9,parkourMins=10..}] run tellraw @a ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[team=Lobby,tag=finishedParkour,scores={parkourSecs=10..,parkourMins=10..}] run tellraw @a ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]

#Visual/Sound effects
execute as @a[team=Lobby,tag=finishedParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1
execute as @a[team=Lobby,tag=finishedParkour] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.1
execute as @a[team=Lobby,tag=finishedParkour] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.3
execute as @a[team=Lobby,tag=finishedParkour] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s

#First time completion
execute as @a[team=Lobby,tag=finishedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourTime = @s finalParkourTime
execute as @a[team=Lobby,tag=finishedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourMins = @s parkourMins
execute as @a[team=Lobby,tag=finishedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourSecs = @s parkourSecs
execute as @a[team=Lobby,tag=finishedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourDeci = @s parkourDeci
execute as @a[team=Lobby,tag=finishedParkour,tag=!firstParkour] run scoreboard players operation @s bestParkourDeci2 = @s parkourDeci2

#Repeat completion
execute as @a[team=Lobby,tag=finishedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run tellraw @s [{"text":"That's a new personal best time!","color":"green","italic":true}]
execute as @a[team=Lobby,tag=finishedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourMins = @s parkourMins
execute as @a[team=Lobby,tag=finishedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourSecs = @s parkourSecs
execute as @a[team=Lobby,tag=finishedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourDeci = @s parkourDeci
execute as @a[team=Lobby,tag=finishedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourDeci2 = @s parkourDeci2
execute as @a[team=Lobby,tag=finishedParkour,tag=firstParkour] if score @s finalParkourTime < @s bestParkourTime run scoreboard players operation @s bestParkourTime = @s finalParkourTime

#Store in leaderboard
execute as @a[team=Lobby,tag=finishedParkour] if score @e[type=area_effect_cloud,tag=ParkourTime,limit=1] bestParkourTime > @s finalParkourTime at @s run function lobby:parkour/updatelb

#Remove tags
execute as @a[team=Lobby,tag=finishedParkour] run tag @s add firstParkour
execute as @a[team=Lobby,tag=finishedParkour] run tag @s remove inParkour
execute as @a[team=Lobby,tag=finishedParkour] run tag @s remove finishedParkour

##Scoreboard timer
scoreboard players add @a[team=Lobby,tag=inParkour] finalParkourTime 1
scoreboard players add @a[team=Lobby,tag=inParkour] parkourTimer 1
scoreboard players add @a[team=Lobby,tag=inParkour] parkourSecs 0
scoreboard players add @a[team=Lobby,tag=inParkour] parkourMins 0
scoreboard players add @a[team=Lobby,tag=inParkour,scores={parkourTimer=20}] parkourSecs 1
scoreboard players set @a[team=Lobby,tag=inParkour,scores={parkourTimer=20}] parkourTimer 0
scoreboard players add @a[team=Lobby,tag=inParkour,scores={parkourSecs=60}] parkourMins 1
scoreboard players set @a[team=Lobby,tag=inParkour,scores={parkourSecs=60}] parkourSecs 0

#Decimals
scoreboard players set $2 parkourDeci 2
execute as @a[team=Lobby,tag=inParkour] run scoreboard players operation @s parkourDeci = @s parkourTimer
execute as @a[team=Lobby,tag=inParkour] run scoreboard players operation @s parkourDeci /= $2 parkourDeci
scoreboard players add @a[team=Lobby,tag=inParkour] parkourDeci2 5
scoreboard players set @a[team=Lobby,tag=inParkour,scores={parkourDeci2=10}] parkourDeci2 0

##Reset time
tag @a[team=Lobby,tag=inParkour,tag=onResetPlate] remove onResetPlate
execute as @a[team=Lobby,tag=inParkour] at @s if entity @s[x=-73,y=-22,z=-1,dx=0,dy=0,dz=0] run tag @s add onResetPlate
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourSecs 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourMins 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourDeci 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourDeci2 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourTimer 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] checkpoint 0
tag @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] add timeReset
tag @a[team=Lobby,tag=inParkour,tag=timeReset,tag=!onResetPlate] remove timeReset

##Display actionbar
execute as @a[team=Lobby,tag=inParkour,scores={parkourSecs=..9,parkourMins=..9}] run title @s actionbar ["",{"text":"Parkour Time: ","color":"dark_green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourMins"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourSecs"},"bold":true,"color":"green"},{"text":".","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true}]
execute as @a[team=Lobby,tag=inParkour,scores={parkourSecs=10..,parkourMins=..9}] run title @s actionbar ["",{"text":"Parkour Time: ","color":"dark_green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourMins"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourSecs"},"bold":true,"color":"green"},{"text":".","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true}]
execute as @a[team=Lobby,tag=inParkour,scores={parkourSecs=..9,parkourMins=10..}] run title @s actionbar ["",{"text":"Parkour Time: ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"text":"0","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourSecs"},"bold":true,"color":"green"},{"text":".","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true}]
execute as @a[team=Lobby,tag=inParkour,scores={parkourSecs=10..,parkourMins=10..}] run title @s actionbar ["",{"text":"Parkour Time: ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"bold":true,"color":"green"},{"text":":","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourSecs"},"bold":true,"color":"green"},{"text":".","bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci"},"bold":true,"color":"green"},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true}]

##Invisible players within range
execute as @a[team=Lobby,tag=inParkour] at @s if entity @a[team=Lobby,tag=inParkour,distance=0.0001..8] run effect give @s invisibility 1000000 255 true
execute as @a[team=Lobby,tag=inParkour] at @s unless entity @a[team=Lobby,tag=inParkour,distance=0.0001..8] run effect clear @s invisibility
effect clear @a[team=Lobby,tag=!inParkour] invisibility

##Boots
item replace entity @a[team=Lobby,tag=inParkour,nbt=!{Inventory:[{id:"minecraft:iron_boots",Slot:100b}]}] armor.feet with iron_boots{display:{Name:'{"text":"Parkour Boots","color":"dark_green","bold":true,"italic":false}'},Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:7}

#Only lobby players in Parkour mode
effect clear @a[team=!Lobby,tag=inParkour] invisibility
tag @a[team=!Lobby,tag=inParkour] remove inParkour

#### TODO IMPROVE
#Exit parkour if you fall on the ground
execute as @a[team=Lobby,tag=inParkour] at @s if block ~ ~-1 ~ black_concrete run tag @s remove inParkour
execute as @a[team=Lobby,tag=inParkour] at @s if block ~-0.3 ~-1 ~ black_concrete run tag @s remove inParkour
execute as @a[team=Lobby,tag=inParkour] at @s if block ~0.3 ~-1 ~ black_concrete run tag @s remove inParkour
execute as @a[team=Lobby,tag=inParkour] at @s if block ~ ~-1 ~-0.3 black_concrete run tag @s remove inParkour
execute as @a[team=Lobby,tag=inParkour] at @s if block ~ ~-1 ~0.3 black_concrete run tag @s remove inParkour
execute as @a[team=Lobby,tag=inParkour] at @s if block ~0.3 ~-1 ~0.3 black_concrete run tag @s remove inParkour
execute as @a[team=Lobby,tag=inParkour] at @s if block ~-0.3 ~-1 ~0.3 black_concrete run tag @s remove inParkour
execute as @a[team=Lobby,tag=inParkour] at @s if block ~-0.3 ~-1 ~-0.3 black_concrete run tag @s remove inParkour
execute as @a[team=Lobby,tag=inParkour] at @s if block ~0.3 ~-1 ~-0.3 black_concrete run tag @s remove inParkour

##Reset objectives/tags for non-parkour players
scoreboard players reset @a[tag=!inParkour] parkourTimer
scoreboard players reset @a[tag=!inParkour] parkourMins
scoreboard players reset @a[tag=!inParkour] parkourSecs
scoreboard players reset @a[tag=!inParkour] parkourDeci
scoreboard players reset @a[tag=!inParkour] parkourDeci2
scoreboard players reset @a[tag=!inParkour] finalParkourTime
tag @a[tag=!inParkour] remove onResetPlate
tag @a[tag=!inParkour] remove timeReset