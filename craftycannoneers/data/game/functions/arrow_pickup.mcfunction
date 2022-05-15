##Overhauls default arrow pickup system to give custom named arrows

#50/50 chance of killing arrow
scoreboard players set $2 arrowtime 2
execute as @e[type=arrow,nbt={inGround:1b},tag=!thanossnap] store result score @s arrowtime run data get entity @s UUID[0]
execute as @e[type=arrow,nbt={inGround:1b},tag=!thanossnap] run scoreboard players operation @s arrowtime %= $2 arrowtime
kill @e[type=arrow,nbt={inGround:1b},tag=!thanossnap,scores={arrowtime=1}]
tag @e[type=arrow,nbt={inGround:1b},tag=!thanossnap] add thanossnap

#Pickup conditions
execute as @e[type=arrow,nbt={pickup:1b}] run data merge entity @s {pickup:0}
scoreboard players add @e[type=arrow,nbt={inGround:1b},tag=!pickup] arrowtime 1
scoreboard players add @e[type=arrow,tag=pickup] arrowtime 1
execute as @a[team=!Spectator] at @s as @e[type=arrow,scores={arrowtime=10..},nbt={inGround:1b},limit=1,distance=..2,sort=nearest] run tag @s add pickup

#Move towards player
execute as @e[type=arrow,tag=pickup] at @s at @p[team=!Spectator,distance=..2] run tp @s ~ ~ ~
execute store result score $AC arrowtime if score $AC arrowtime matches 0
execute as @e[type=arrow,tag=pickup,nbt={inGround:1b}] store result entity @s Air run scoreboard players get $AC arrowtime

#Despawn after 1 minute on ground or upon pickup
kill @e[type=arrow,scores={arrowtime=1200..}]

#Cancel pickup conditions
scoreboard players set @e[type=arrow,nbt={inGround:0b}] arrowtime 0
execute as @e[type=arrow,scores={arrowtime=..9}] run tag @s remove pickup

#Give arrow (TODO: add custom colors based on team)
# execute as @e[type=arrow,tag=pickup,tag=!given,nbt={inGround:1b}] at @s run give @p[team=!Spectator,distance=..2,tag=fullOffhand] arrow{display:{Name:'{"text":"Arrow","color":"light_purple","italic":true,"bold":true}'}}

#Schedule arrow for despawn
scoreboard players set @e[type=arrow,tag=pickup] arrowtime 1199