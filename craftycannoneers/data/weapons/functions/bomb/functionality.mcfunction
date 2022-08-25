#> General
tag @s[scores={CmdData=3..},nbt={OnGround:1b}] add Kaboom
scoreboard players add @s CmdData 1
execute at @s run particle flame ~ ~0.5 ~ 0 0 0 .02 1 force
execute at @s run playsound blastbombfuse master @a ~ ~ ~ 0.5 1

#> Water kill
execute as @e[type=armor_stand,tag=Bomb] at @s if block ~ ~ ~ water run function weapons:bomb/waterkill

#> Kaboom
execute at @s[tag=Kaboom] run function weapons:bomb/kaboom