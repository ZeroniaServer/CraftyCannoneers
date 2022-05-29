execute store result score @s x run data get entity @s Pos[0] 1000000
execute store result score @s y run data get entity @s Pos[1] 1000000
execute store result score @s z run data get entity @s Pos[2] 1000000

execute as @s[scores={PowerM=1}] at @s run tp @s ^ ^ ^0.0006
execute as @s[scores={PowerM=2}] at @s run tp @s ^ ^ ^0.0007
execute as @s[scores={PowerM=3}] at @s run tp @s ^ ^ ^0.0008
execute as @s[scores={PowerM=4}] at @s run tp @s ^ ^ ^0.0009
execute as @s[scores={PowerM=5}] at @s run tp @s ^ ^ ^0.0010
execute as @s[scores={PowerM=6}] at @s run tp @s ^ ^ ^0.0011
execute as @s[scores={PowerM=7}] at @s run tp @s ^ ^ ^0.0012
execute as @s[scores={PowerM=8}] at @s run tp @s ^ ^ ^0.0013
execute as @s[scores={PowerM=9}] at @s run tp @s ^ ^ ^0.0014
execute as @s[scores={PowerM=10}] at @s run tp @s ^ ^ ^0.0015
execute as @s[scores={PowerM=11}] at @s run tp @s ^ ^ ^0.0016
execute as @s[scores={PowerM=12}] at @s run tp @s ^ ^ ^0.0017
execute as @s[scores={PowerM=13}] at @s run tp @s ^ ^ ^0.0018
execute as @s[scores={PowerM=14}] at @s run tp @s ^ ^ ^0.0019

execute store result score @s dx run data get entity @s Pos[0] 1000000
execute store result score @s dy run data get entity @s Pos[1] 1000000
execute store result score @s dz run data get entity @s Pos[2] 1000000

scoreboard players operation @s dx -= @s x
scoreboard players operation @s dy -= @s y
scoreboard players operation @s dz -= @s z

#########
#How to change the speed:
#        "(...) Motion[0] double 0.002 (...)"        <--- the bigger this number, the faster the entity
#########

execute store result entity @s Motion[0] double 0.004 run scoreboard players get @s dx
execute store result entity @s Motion[1] double 0.004 run scoreboard players get @s dy
execute store result entity @s Motion[2] double 0.004 run scoreboard players get @s dz

tag @s add CannonballShot

execute store result score @s x run data get entity @s Motion[0] 1000
execute store result score @s y run data get entity @s Motion[1] 1000
execute store result score @s z run data get entity @s Motion[2] 1000