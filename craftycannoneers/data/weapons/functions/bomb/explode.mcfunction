playsound blastbombexplode master @a ~ ~ ~ 1.5 1.3
particle flash ~ ~1 ~ 0 0 0 0 1 force @a[team=!Lobby]
particle dust 0 0.8 1 2 ~ ~1 ~ 1 1 1 0 30 force @a[team=!Lobby]
particle cloud ~ ~1 ~ 1 1 1 0.3 10 force @a[team=!Lobby]
particle explosion ~ ~ ~ 1 1 1 0.1 12 force @a[team=!Lobby]
particle item ender_eye{CustomModelData:2} ~ ~ ~ 0.1 0.1 0.1 0.1 10 force @a[team=!Lobby]

#> Remount nearby Crabs/Sharks
execute as @e[type=cat,tag=CrabVehicle,tag=dismounted,distance=..10] run function game:modifiers/crabs/remount
execute as @e[type=cod,tag=NewVCod,tag=dismounted,distance=..10] run function game:modifiers/sharks/remount

kill @s