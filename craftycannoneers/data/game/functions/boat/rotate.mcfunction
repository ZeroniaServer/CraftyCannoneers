execute store result score @s[tag=!respawnboat] eyeclick run data get entity @s Rotation[0]
scoreboard players set @s[scores={eyeclick=180}] eyeclick -180
scoreboard players operation @s eyeclick /= 2 const
function game:boat/rotate/tree/root

execute if entity @s[tag=1] run tag @e[type=boat,tag=Rotate,limit=1] add 1
execute if entity @s[tag=1] run tag @e[type=armor_stand,tag=Rotate,limit=1] add 1

execute if entity @s[tag=2] run tag @e[type=boat,tag=Rotate,limit=1] add 2
execute if entity @s[tag=2] run tag @e[type=armor_stand,tag=Rotate,limit=1] add 2

execute if entity @s[tag=3] run tag @e[type=boat,tag=Rotate,limit=1] add 3
execute if entity @s[tag=3] run tag @e[type=armor_stand,tag=Rotate,limit=1] add 3

execute if entity @s[tag=4] run tag @e[type=boat,tag=Rotate,limit=1] add 4
execute if entity @s[tag=4] run tag @e[type=armor_stand,tag=Rotate,limit=1] add 4

execute if entity @s[tag=1] store result score $boat1 CmdData run data get entity @e[type=boat,tag=Rotate,limit=1] UUID[0]
execute if entity @s[tag=2] store result score $boat2 CmdData run data get entity @e[type=boat,tag=Rotate,limit=1] UUID[0]
execute if entity @s[tag=3] store result score $boat3 CmdData run data get entity @e[type=boat,tag=Rotate,limit=1] UUID[0]
execute if entity @s[tag=4] store result score $boat4 CmdData run data get entity @e[type=boat,tag=Rotate,limit=1] UUID[0]

#> Transfer Cannon data
execute if score $BoatCannons CmdData matches 1 run scoreboard players operation $temp CannonID = @s CannonID
execute if score $BoatCannons CmdData matches 1 run scoreboard players operation $temp cannonshot = @s cannonshot
execute if score $BoatCannons CmdData matches 1 run scoreboard players operation $temp playerUUID = @s playerUUID
execute if score $BoatCannons CmdData matches 1 run scoreboard players operation $temp PowerM = @s PowerM
execute if score $BoatCannons CmdData matches 1 as @e[type=boat,tag=Rotate,limit=1] run function game:boat/cannon/transfer

tag @e[type=boat,tag=Rotate,limit=1] remove Rotate
tag @e[type=armor_stand,tag=Rotate,limit=1] remove Rotate