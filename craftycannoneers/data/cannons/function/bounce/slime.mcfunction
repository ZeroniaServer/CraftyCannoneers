team join Collide @s
scoreboard players add @s CmdData 1

execute at @s[scores={CmdData=1}] run tp @s ~ ~-35 ~
attribute @s[scores={CmdData=1}] scale base set 1
attribute @s[scores={CmdData=1}] attack_damage base set 6

#> Remount nearby Crabs/Sharks
execute at @s[scores={CmdData=3}] as @e[type=cat,tag=CrabVehicle,tag=dismounted,distance=..10] run function game:modifiers/crabs/remount
execute at @s[scores={CmdData=3}] as @e[type=cod,tag=NewVCod,tag=dismounted,distance=..10] run function game:modifiers/sharks/remount

#> Blast nearby Boats backwards
execute at @s[scores={CmdData=1..}] as @e[type=oak_boat,tag=BoatBoat,distance=..6] run function game:boat/blast

execute at @s[scores={CmdData=104..}] run function cannons:bounce/killcheck
attribute @s[scores={CmdData=6}] scale base set 0
execute at @s[scores={CmdData=6},tag=!killed] run tp @s ~ -64 ~