bossbar set lobbybar color green
bossbar set lobbybar name {"text":"A game is currently in progress!","bold":true,"color":"green"}

function game:ingame/chestspawning
function game:ingame/arrowpickup
function game:ingame/boat
function game:ingame/harpoon
function tutorial:notify
function tutorial:showtip

execute unless entity @e[type=slime,tag=Weakpoint,tag=Orange] if entity @e[type=marker,tag=WeakpointLoc,tag=Purple] run function game:shipweakpoint/spawnnewpurple
execute unless entity @e[type=slime,tag=Weakpoint,tag=Purple] if entity @e[type=marker,tag=WeakpointLoc,tag=Orange] run function game:shipweakpoint/spawnneworange

#> Boat specific effects
execute as @a[team=Orange,predicate=game:onorange,tag=!onboatregen] run effect give @s regeneration 1000000 1 true
execute as @a[team=Purple,predicate=game:onpurple,tag=!onboatregen] run effect give @s regeneration 1000000 1 true
execute as @a[team=Orange,predicate=game:onorange,tag=!onboatregen] run tag @s add onboatregen
execute as @a[team=Purple,predicate=game:onpurple,tag=!onboatregen] run tag @s add onboatregen
execute as @a[team=Orange,predicate=!game:onorange,tag=onboatregen] run effect clear @s regeneration
execute as @a[team=Purple,predicate=!game:onpurple,tag=onboatregen] run effect clear @s regeneration
execute as @a[team=Orange,predicate=!game:onorange,tag=onboatregen] run tag @s remove onboatregen
execute as @a[team=Purple,predicate=!game:onpurple,tag=onboatregen] run tag @s remove onboatregen

execute as @a[team=Orange,predicate=game:onpurple,tag=!EnemyMSG] run title @s title {"text":" ","color":"red"}
execute as @a[team=Orange,predicate=game:onpurple,tag=!EnemyMSG,tag=!SeeWeakpoint] unless entity @s[scores={openchest=1..}] run title @s subtitle {"text":"You've boarded the enemy ship...","color":"dark_red"}
execute as @a[team=Purple,predicate=game:onorange,tag=!EnemyMSG] run title @s title {"text":" ","color":"red"}
execute as @a[team=Purple,predicate=game:onorange,tag=!EnemyMSG,tag=!SeeWeakpoint] unless entity @s[scores={openchest=1..}] run title @s subtitle {"text":"You've boarded the enemy ship...","color":"dark_red"}
execute as @a[team=Orange,predicate=game:onpurple,tag=!EnemyMSG] run tag @s add EnemyMSG
execute as @a[team=Purple,predicate=game:onpurple,tag=!EnemyMSG] run tag @s add EnemyMSG

execute as @a[team=Purple,tag=EnemyMSG,predicate=!game:onorange] run tag @s remove EnemyMSG
execute as @a[team=Orange,tag=EnemyMSG,predicate=!game:onpurple] run tag @s remove EnemyMSG
tag @a[tag=EnemyMSG,team=!Orange,team=!Purple] remove EnemyMSG

execute as @a[team=Orange,predicate=game:onpurple] run effect give @s weakness 1 0 true
execute as @a[team=Purple,predicate=game:onorange] run effect give @s weakness 1 0 true

setblock 88 -27 55 minecraft:spruce_slab[type=top]
spawnpoint @a[team=Orange] 88 -26 55 90

setblock 52 -27 -55 minecraft:spruce_slab[type=top]
spawnpoint @a[team=Purple] 52 -26 -55 -90

setblock 68 -29 50 spruce_slab[type=top]
setblock 72 -29 51 dark_oak_slab[type=top]
setblock 64 -29 51 dark_oak_slab[type=top]
setblock 64 -32 50 dark_oak_slab[type=top]
setblock 72 -32 50 dark_oak_slab[type=top]
setblock 72 -29 -50 spruce_slab[type=top]
setblock 76 -29 -51 dark_oak_slab[type=top]
setblock 68 -29 -51 dark_oak_slab[type=top]
setblock 68 -32 -50 dark_oak_slab[type=top]
setblock 76 -32 -50 dark_oak_slab[type=top]

setblock 70 -28 51 end_stone_brick_wall[up=true]
fill 70 -27 50 70 -27 49 creeper_head

setblock 66 -28 51 end_stone_brick_wall[up=true]
fill 66 -27 50 66 -27 49 creeper_head

setblock 62 -28 52 end_stone_brick_wall[up=true]
fill 62 -27 51 62 -27 50 creeper_head

setblock 62 -31 52 end_stone_brick_wall[up=true]
fill 62 -30 51 62 -30 50 creeper_head

setblock 74 -31 51 end_stone_brick_wall[up=true]
fill 74 -30 50 74 -30 49 creeper_head

setblock 83 -23 52 end_stone_brick_wall[up=true]
fill 83 -22 51 83 -22 50 creeper_head

setblock 70 -28 -51 end_stone_brick_wall[up=true]
fill 70 -27 -50 70 -27 -49 creeper_head

setblock 74 -28 -51 end_stone_brick_wall[up=true]
fill 74 -27 -50 74 -27 -49 creeper_head

setblock 78 -28 -52 end_stone_brick_wall[up=true]
fill 78 -27 -51 78 -27 -50 creeper_head

setblock 78 -31 -52 end_stone_brick_wall[up=true]
fill 78 -30 -51 78 -30 -50 creeper_head

setblock 66 -31 -51 end_stone_brick_wall[up=true]
fill 66 -30 -50 66 -30 -49 creeper_head

setblock 57 -23 -52 end_stone_brick_wall[up=true]
fill 57 -22 -51 57 -22 -50 creeper_head

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

execute as @a[scores={death=1..}] run function cannons:despawnplayerc
execute as @a[scores={death=1..},team=!Lobby,team=!Spectator] run function game:givegear
execute as @a[scores={death=1..},team=!Lobby,team=!Spectator] run gamemode adventure @s[gamemode=!spectator]
tp @a[team=Orange,scores={death=1..}] 88 -26 55 90 0
tp @a[team=Purple,scores={death=1..}] 52 -26 -55 -90 0
tag @a[scores={death=1..}] remove onboatregen
scoreboard players add @a[team=!Lobby,team=!Spectator,scores={death=1..}] MVPdeath 1
scoreboard players reset @a[scores={death=1..}] death

effect give @a[team=!Lobby,team=!Spectator,scores={kill=1..,gappleTimer=0}] regeneration 4 2 true
scoreboard players add @a[team=!Lobby,team=!Spectator,scores={kill=1..}] MVPkill 1
execute as @a[team=!Lobby,team=!Spectator,scores={kill=1..}] run advancement grant @s only tutorial:unlockables/killplayer
scoreboard players reset @a[scores={kill=1..}] kill


execute unless score $TimeLimit CmdData matches 42069.. run function game:ingame/timer

#> Game end criteria
#players leave
execute unless score $gamestate CmdData matches 3.. unless entity @a[team=Purple] unless entity @a[team=Orange] if entity @e[type=armor_stand,tag=ConfirmIcon] run tellraw @a {"text":"No players remaining. The previous game has been cancelled.","color":"red"}
execute unless score $gamestate CmdData matches 3.. unless entity @a[team=Purple] unless entity @a[team=Orange] if entity @e[type=armor_stand,tag=ConfirmIcon] run function game:forcestop

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

execute as @e[type=wandering_trader,tag=Trader] at @s run tp @s ~ ~ ~ facing entity @p[gamemode=!spectator,team=!Lobby,team=!Spectator,distance=..10]

#passive regen + gapple timer
scoreboard players add @a gappleTimer 0
execute as @a[scores={eatGapple=1..}] run scoreboard players set @s gappleTimer 1
scoreboard players reset @a eatGapple
scoreboard players add @a[scores={gappleTimer=1..100}] gappleTimer 1
scoreboard players set @a[scores={gappleTimer=101..}] gappleTimer 0

#team chests
fill 69 -29 60 67 -29 60 spruce_slab[type=top]
fill 71 -29 -60 73 -29 -60 spruce_slab[type=top]
function chests:openchest

execute as @e[type=chest_minecart,tag=orangeteamchest] at @s unless entity @a[team=Purple,distance=..6] run tp @s 68.50 -28 60.50
execute as @e[type=chest_minecart,tag=orangeteamchest,tag=Opened] at @s unless entity @a[team=Purple,distance=..6] unless entity @a[team=Orange,distance=..5] run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 0.75
execute as @e[type=chest_minecart,tag=orangeteamchest,tag=Opened] at @s unless entity @a[team=Purple,distance=..6] unless entity @a[team=Orange,distance=..5] run item replace entity @e[type=armor_stand,tag=orangechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:52}
execute as @e[type=chest_minecart,tag=orangeteamchest,tag=Opened] at @s unless entity @a[team=Purple,distance=..6] unless entity @a[team=Orange,distance=..5] run tag @s remove Opened

execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=Opened] at @s if entity @a[team=Purple,distance=..6] run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 0.75
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=!PlayedSound] at @s if entity @a[team=Purple,distance=..6] run item replace entity @e[type=armor_stand,tag=orangechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:53}
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=!PlayedSound] at @s if entity @a[team=Purple,distance=..6] run summon area_effect_cloud ~ ~0.85 ~ {Duration:2000000000,Tags:["ChestNotif","Orange","chestdisplay"],CustomNameVisible:1b,CustomName:'{"text":"CHEST LOCKED","color":"dark_red","bold":"true","underlined":"true"}'}
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=!PlayedSound] at @s if entity @a[team=Purple,distance=..6] run summon area_effect_cloud ~ ~0.6 ~ {Duration:2000000000,Tags:["ChestNotif","Orange","chestdisplay"],CustomNameVisible:1b,CustomName:'{"text":"An enemy is nearby!","color":"red","bold":"true"}'}
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=Opened] at @s if entity @a[team=Purple,distance=..6] run tag @s remove Opened
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=!PlayedSound] at @s if entity @a[team=Purple,distance=..6] run playsound chestlock master @a ~ ~ ~ 1.3 1
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=!PlayedSound] at @s if entity @a[team=Purple,distance=..6] run tag @s add PlayedSound

execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=!PlayedSound2] at @s if entity @a[team=Purple,distance=..6] run playsound chestunlock master @a ~ ~ ~ 1.3 1
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=!PlayedSound2] at @s if entity @a[team=Purple,distance=..6] run item replace entity @e[type=armor_stand,tag=orangechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:52}
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=!PlayedSound2] at @s if entity @a[team=Purple,distance=..6] run kill @e[type=area_effect_cloud,tag=ChestNotif,tag=Orange]
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=!PlayedSound2] at @s if entity @a[team=Purple,distance=..6] run summon area_effect_cloud ~ ~0.85 ~ {Duration:2000000000,Tags:["ChestNotif","Orange","chestdisplay"],CustomNameVisible:1b,CustomName:'{"text":"CHEST UNLOCKED","color":"dark_green","bold":"true","underlined":"true"}'}
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=!PlayedSound2] at @s if entity @a[team=Purple,distance=..6] run summon area_effect_cloud ~ ~0.6 ~ {Duration:2000000000,Tags:["ChestNotif","Orange","chestdisplay"],CustomNameVisible:1b,CustomName:'{"text":"An enemy unlocked the chest!","color":"green","bold":"true"}'}
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=!PlayedSound2] at @s if entity @a[team=Purple,distance=..6] run tag @s add PlayedSound2

execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=PlayedSound2] at @s if entity @a[team=Purple,distance=..6] run scoreboard players reset @s CmdData
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=PlayedSound2] at @s unless entity @a[team=Purple,distance=..6] run scoreboard players add @s CmdData 1
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=PlayedSound2] at @s unless entity @a[team=Purple,distance=..6] if score @s CmdData matches 80 run tag @s remove PlayedSound2
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=!PlayedSound2] at @s unless entity @a[team=Purple,distance=..6] run scoreboard players reset @s CmdData

execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=PlayedSound] at @s unless entity @a[team=Purple,distance=..6] run playsound chestunlock master @a ~ ~ ~ 1.3 1
execute as @e[type=chest_minecart,tag=orangeteamchest,tag=!PlayedSound2] at @s unless entity @a[team=Purple,distance=..6] run tag @e[type=armor_stand,tag=orangechestdisplay,tag=Unlocked] remove Unlocked
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=PlayedSound,tag=!Opened] at @s unless entity @a[team=Purple,distance=..6] run item replace entity @e[type=armor_stand,tag=orangechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:52}
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=PlayedSound] at @s unless entity @a[team=Purple,distance=..6] run kill @e[type=area_effect_cloud,tag=ChestNotif,tag=Orange]
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=PlayedSound] at @s unless entity @a[team=Purple,distance=..6] run tag @s remove PlayedSound2
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=orangeteamchest,tag=PlayedSound] at @s unless entity @a[team=Purple,distance=..6] run tag @s remove PlayedSound
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=orangeteamchest] at @s if entity @a[team=Purple,distance=..6] run tp @s 68.50 300.00 60.50
execute if entity @e[type=armor_stand,tag=orangechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=orangeteamchest] run tp @s 68.50 -28 60.50

##########################

execute as @e[type=chest_minecart,tag=purpleteamchest] at @s unless entity @a[team=Orange,distance=..6] run tp @s 72.50 -28 -59.50
execute as @e[type=chest_minecart,tag=purpleteamchest,tag=Opened] at @s unless entity @a[team=Orange,distance=..6] unless entity @a[team=Purple,distance=..5] run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 0.75
execute as @e[type=chest_minecart,tag=purpleteamchest,tag=Opened] at @s unless entity @a[team=Orange,distance=..6] unless entity @a[team=Purple,distance=..5] run item replace entity @e[type=armor_stand,tag=purplechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:49}
execute as @e[type=chest_minecart,tag=purpleteamchest,tag=Opened] at @s unless entity @a[team=Orange,distance=..6] unless entity @a[team=Purple,distance=..5] run tag @s remove Opened

execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=Opened] at @s if entity @a[team=Orange,distance=..6] run playsound minecraft:block.chest.close master @a ~ ~ ~ 1 0.75
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=!PlayedSound] at @s if entity @a[team=Orange,distance=..6] run item replace entity @e[type=armor_stand,tag=purplechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:50}
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=!PlayedSound] at @s if entity @a[team=Orange,distance=..6] run summon area_effect_cloud ~ ~0.85 ~ {Duration:2000000000,Tags:["ChestNotif","Purple","chestdisplay"],CustomNameVisible:1b,CustomName:'{"text":"CHEST LOCKED","color":"dark_red","bold":"true","underlined":"true"}'}
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=!PlayedSound] at @s if entity @a[team=Orange,distance=..6] run summon area_effect_cloud ~ ~0.6 ~ {Duration:2000000000,Tags:["ChestNotif","Purple","chestdisplay"],CustomNameVisible:1b,CustomName:'{"text":"An enemy is nearby!","color":"red","bold":"true"}'}
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=Opened] at @s if entity @a[team=Orange,distance=..6] run tag @s remove Opened
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=!PlayedSound] at @s if entity @a[team=Orange,distance=..6] run playsound chestlock master @a ~ ~ ~ 1.3 1
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=!PlayedSound] at @s if entity @a[team=Orange,distance=..6] run tag @s add PlayedSound

execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=!PlayedSound2] at @s if entity @a[team=Orange,distance=..6] run playsound chestunlock master @a ~ ~ ~ 1.3 1
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=!PlayedSound2] at @s if entity @a[team=Orange,distance=..6] run item replace entity @e[type=armor_stand,tag=purplechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:49}
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=!PlayedSound2] at @s if entity @a[team=Orange,distance=..6] run kill @e[type=area_effect_cloud,tag=ChestNotif,tag=Purple]
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=!PlayedSound2] at @s if entity @a[team=Orange,distance=..6] run summon area_effect_cloud ~ ~0.85 ~ {Duration:2000000000,Tags:["ChestNotif","Purple","chestdisplay"],CustomNameVisible:1b,CustomName:'{"text":"CHEST UNLOCKED","color":"dark_green","bold":"true","underlined":"true"}'}
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=!PlayedSound2] at @s if entity @a[team=Orange,distance=..6] run summon area_effect_cloud ~ ~0.6 ~ {Duration:2000000000,Tags:["ChestNotif","Purple","chestdisplay"],CustomNameVisible:1b,CustomName:'{"text":"An enemy unlocked the chest!","color":"green","bold":"true"}'}
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=!PlayedSound2] at @s if entity @a[team=Orange,distance=..6] run tag @s add PlayedSound2

execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=PlayedSound2] at @s if entity @a[team=Orange,distance=..6] run scoreboard players reset @s CmdData
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=PlayedSound2] at @s unless entity @a[team=Orange,distance=..6] run scoreboard players add @s CmdData 1
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=PlayedSound2] at @s unless entity @a[team=Orange,distance=..6] if score @s CmdData matches 80 run tag @s remove PlayedSound2
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=!PlayedSound2] at @s unless entity @a[team=Orange,distance=..6] run scoreboard players reset @s CmdData

execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=PlayedSound] at @s unless entity @a[team=Orange,distance=..6] run playsound chestunlock master @a ~ ~ ~ 1.3 1
execute as @e[type=chest_minecart,tag=purpleteamchest,tag=!PlayedSound2] at @s unless entity @a[team=Orange,distance=..6] run tag @e[type=armor_stand,tag=purplechestdisplay,tag=Unlocked] remove Unlocked
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=PlayedSound,tag=!Opened] at @s unless entity @a[team=Orange,distance=..6] run item replace entity @e[type=armor_stand,tag=purplechestdisplay,limit=1] armor.head with diamond_hoe{CustomModelData:49}
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=PlayedSound] at @s unless entity @a[team=Orange,distance=..6] run kill @e[type=area_effect_cloud,tag=ChestNotif,tag=Purple]
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=PlayedSound] at @s unless entity @a[team=Orange,distance=..6] run tag @s remove PlayedSound2
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=purpleteamchest,tag=PlayedSound] at @s unless entity @a[team=Orange,distance=..6] run tag @s remove PlayedSound
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=!Unlocked] as @e[type=chest_minecart,tag=purpleteamchest] at @s if entity @a[team=Orange,distance=..6] run tp @s 72.50 300.00 -59.50
execute if entity @e[type=armor_stand,tag=purplechestdisplay,tag=Unlocked] as @e[type=chest_minecart,tag=purpleteamchest] run tp @s 72.50 -28 -59.50