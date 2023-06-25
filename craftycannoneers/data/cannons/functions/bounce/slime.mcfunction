team join Collide @s
scoreboard players add @s CmdData 1

execute at @s[scores={CmdData=1}] run tp @s ~ ~-35 ~
data merge entity @s[scores={CmdData=1}] {Attributes:[{Name:"generic.attack_damage",Base:6d}]}

#> Remount nearby Crabs/Sharks
execute at @s[scores={CmdData=3}] as @e[type=cat,tag=CrabVehicle,tag=dismounted,distance=..10] run function game:modifiers/crabs/remount
execute at @s[scores={CmdData=3}] as @e[type=cod,tag=NewVCod,tag=dismounted,distance=..10] run function game:modifiers/sharks/remount

#> Blast nearby Boats backwards
execute at @s[scores={CmdData=1..}] as @e[type=boat,tag=BoatBoat,distance=..6] run function game:boat/blast

execute at @s[scores={CmdData=6..}] run function cannons:bounce/killcheck
execute at @s[scores={CmdData=6},tag=!killed] run tp @s ~ ~35 ~