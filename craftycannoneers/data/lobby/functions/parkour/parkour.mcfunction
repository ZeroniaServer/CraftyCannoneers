#######################################################
## PARKOUR: The system behind the Lobby Parkour Area ##
#######################################################

##Start parkour
execute as @a[team=Lobby,tag=!inParkour] at @s positioned ~ ~1 ~ if entity @e[type=marker,tag=parkourStart,limit=1,distance=..1.3] run tag @s add startParkour
execute as @a[team=Lobby,tag=startParkour] run function game:clearinventory
execute as @a[team=Lobby,tag=startParkour] run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'{"text":"Restart Parkour","color":"green","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:1,Restart:1b,NoDrop:1b,HideFlags:127}
execute as @a[team=Lobby,tag=startParkour] run item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'{"text":"Quit Parkour","color":"red","bold":true,"italic":false}'},Unbreakable:1b,CustomModelData:2,Quit:1b,NoDrop:1b,HideFlags:127}
execute as @a[team=Lobby,tag=startParkour] run tellraw @s [{"text":"Parkour Run Started!","color":"dark_green","bold":true}]
execute as @a[team=Lobby,tag=startParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1
execute as @a[team=Lobby,tag=startParkour] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.3
execute as @a[team=Lobby,tag=startParkour] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s
execute as @a[team=Lobby,tag=startParkour] run tag @s add inParkour

##End parkour
execute as @a[team=Lobby,tag=inParkour] at @s positioned ~ ~1 ~ if entity @e[type=marker,tag=parkourEnd,limit=1,distance=..1.3] run tag @s add finishedParkour
execute as @a[team=Lobby,tag=finishedParkour] run advancement grant @s only tutorial:unlockables/parkour
execute as @a[team=Lobby,tag=finishedParkour,scores={parkourSecs=..9,parkourMins=..9}] run tellraw @a[team=!Purple,team=!Orange] ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"text":"0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[team=Lobby,tag=finishedParkour,scores={parkourSecs=10..,parkourMins=..9}] run tellraw @a[team=!Purple,team=!Orange] ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"text":"0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[team=Lobby,tag=finishedParkour,scores={parkourSecs=..9,parkourMins=10..}] run tellraw @a[team=!Purple,team=!Orange] ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":0","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]
execute as @a[team=Lobby,tag=finishedParkour,scores={parkourSecs=10..,parkourMins=10..}] run tellraw @a[team=!Purple,team=!Orange] ["",{"selector":"@s"},{"text":" completed the Parkour in ","color":"dark_green"},{"score":{"name":"@s","objective":"parkourMins"},"color":"green","bold":true},{"text":":","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourSecs"},"color":"green","bold":true},{"text":".","color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci"},"color":"green","bold":true},{"score":{"name":"@s","objective":"parkourDeci2"},"color":"green","bold":true},{"text":"!","color":"dark_green"}]

##Controls
scoreboard players add @a clickcooldown 0
execute as @a[team=Lobby,tag=inParkour,scores={click=1..,clickcooldown=0},predicate=lobby:parkourrestart] run tag @s add RestartParkour
execute as @a[team=Lobby,tag=inParkour,scores={click=1..},predicate=lobby:parkourquit] run tag @s add QuitParkour
execute as @a[scores={clickcooldown=5..}] run scoreboard players set @s clickcooldown 0
execute as @a[scores={clickcooldown=1..}] run scoreboard players add @s clickcooldown 1
scoreboard players set @a[scores={click=1..}] clickcooldown 1
scoreboard players reset @a[scores={click=1..}] click

execute as @a[team=Lobby,tag=RestartParkour] at @s run tp @s @s
execute as @a[team=Lobby,tag=RestartParkour] at @s run tp @s -71 -21 -1 90 0
tag @a[team=Lobby,tag=RestartParkour] remove RestartParkour

execute as @a[team=Lobby,tag=QuitParkour] run tag @s remove inParkour
execute as @a[team=Lobby,tag=QuitParkour] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
execute as @a[team=Lobby,tag=QuitParkour] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.8
execute as @a[team=Lobby,tag=QuitParkour] at @s run function game:clearinventory
execute as @a[team=Lobby,tag=QuitParkour] at @s run function lobby:items
execute as @a[team=Lobby,tag=QuitParkour] at @s run title @s actionbar {"text":""}
execute as @a[team=Lobby,tag=QuitParkour] at @s run tellraw @s {"text":"Parkour Run Canceled.","color":"red","bold":true}
tag @a[team=Lobby,tag=QuitParkour] remove QuitParkour

#Visual/Sound effects
execute as @a[team=Lobby,tag=finishedParkour] at @s run playsound minecraft:entity.firework_rocket.twinkle_far master @s ~ ~ ~ 1 1
execute as @a[team=Lobby,tag=finishedParkour] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1.1
execute as @a[team=Lobby,tag=finishedParkour] at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1.3
execute as @a[team=Lobby,tag=finishedParkour] at @s run particle firework ~ ~1 ~ 0 0 0 0.1 100 force @s
execute as @a[team=Lobby,tag=finishedParkour] run clear @s carrot_on_a_stick

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
execute as @a[team=Lobby,tag=finishedParkour] if score @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime > @s finalParkourTime run function lobby:parkour/updatelb

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

#Remove tags
execute as @a[team=Lobby,tag=finishedParkour] run tag @s add firstParkour
execute as @a[team=Lobby,tag=finishedParkour] run tag @s remove inParkour
execute as @a[team=Lobby,tag=finishedParkour] run tag @s remove finishedParkour

##Reset time
tag @a[team=Lobby,tag=inParkour,tag=onResetPlate] remove onResetPlate
execute as @a[team=Lobby,tag=inParkour] at @s if entity @s[x=-73,y=-22,z=-1,dx=0,dy=0,dz=0] run tag @s add onResetPlate
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourSecs 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourMins 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourDeci 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourDeci2 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] parkourTimer 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] finalParkourTime 0
scoreboard players set @a[team=Lobby,tag=inParkour,tag=!timeReset,tag=onResetPlate] checkpoint 0
tellraw @a[team=Lobby,tag=inParkour,tag=!startParkour,tag=!timeReset,tag=onResetPlate] {"text":"Parkour Time reset.","color":"dark_green","italic":true}
execute as @a[team=Lobby,tag=startParkour] run tag @s remove startParkour
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

#Only lobby players in Parkour mode
effect clear @a[team=!Lobby,tag=inParkour] invisibility
tag @a[team=!Lobby,tag=inParkour] remove inParkour

#Exit parkour if you fall on the ground
execute positioned -73 -22 -1 as @a[team=Lobby,tag=inParkour,distance=5..] at @s unless block ~ ~-1 ~ #lobby:parkourblocks run tag @s add CancelParkour
tag @a[team=Lobby,tag=CancelParkour] remove inParkour
execute as @a[team=Lobby,tag=CancelParkour] positioned -71 -21 -1 if entity @s[distance=10..] at @s run tp @s @s
execute as @a[team=Lobby,tag=CancelParkour] positioned -71 -21 -1 if entity @s[distance=10..] at @s run tp @s -71 -21 -1 90 0
execute as @a[team=Lobby,tag=CancelParkour] positioned -71 -21 -1 unless entity @s[distance=10..] run tellraw @s {"text":"Parkour Run Canceled.","color":"red","bold":true}
execute as @a[team=Lobby,tag=CancelParkour] positioned -71 -21 -1 unless entity @s[distance=10..] run function game:clearinventory
execute as @a[team=Lobby,tag=CancelParkour] positioned -71 -21 -1 unless entity @s[distance=10..] run function lobby:items
execute as @a[team=Lobby,tag=CancelParkour] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.2
execute as @a[team=Lobby,tag=CancelParkour] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0.8
execute as @a[team=Lobby,tag=CancelParkour] at @s run clear @s carrot_on_a_stick
execute as @a[team=Lobby,tag=CancelParkour] at @s run title @s actionbar {"text":""}
tag @a[team=Lobby,tag=CancelParkour] remove CancelParkour

##Reset objectives/tags for non-parkour players
scoreboard players reset @a[tag=!inParkour] parkourTimer
scoreboard players reset @a[tag=!inParkour] parkourMins
scoreboard players reset @a[tag=!inParkour] parkourSecs
scoreboard players reset @a[tag=!inParkour] parkourDeci
scoreboard players reset @a[tag=!inParkour] parkourDeci2
scoreboard players reset @a[tag=!inParkour] finalParkourTime
tag @a[tag=!inParkour] remove onResetPlate
tag @a[tag=!inParkour] remove timeReset
tag @a[tag=!inParkour] remove CancelParkour
tag @a[tag=!inParkour] remove RestartParkour

##Reset high score if necessary (TODO remove?)
execute if score @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime matches ..0 run tellraw @a [{"text":"An error has occurred, so the Parkour leaderboard has been reset. If you see this message, ","color":"red"},{"text":"please report!","underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://discord.gg/X9bZgw7"},"hoverEvent":{"action":"show_text","contents":[{"text":"Report on the Zeronia Discord Server","color":"white"}]}}]
execute if score @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime matches ..0 run function lobby:parkour/resethighscore