execute store result score $temp bounceID run scoreboard players get @s bounceID
execute as @e[type=armor_stand,tag=BouncyCannonball] at @s if score @s bounceID = $temp bounceID if entity @a[gamemode=!spectator,distance=..6] run scoreboard players set $found bounceID 1
execute unless score $found bounceID matches 1 run function weapons:bomb/killslime
scoreboard players reset $found bounceID