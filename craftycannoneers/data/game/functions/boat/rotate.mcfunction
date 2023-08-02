data modify storage craftycannoneers:boat angle set from entity @s Rotation[0]
function game:boat/placeboat with storage craftycannoneers:boat

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

#> Transfer Boat data
scoreboard players operation $temp firetime = @s firetime
execute store success score $onfire CmdData if entity @s[tag=OnFire]
execute store success score $motionlock CmdData if entity @s[tag=motionlock]
execute if score $BoatCannons CmdData matches 1 run scoreboard players operation $temp CannonID = @s CannonID
execute if score $BoatCannons CmdData matches 1 run scoreboard players operation $temp cannonshot = @s cannonshot
execute if score $BoatCannons CmdData matches 1 run scoreboard players operation $temp playerUUID = @s playerUUID
execute if score $BoatCannons CmdData matches 1 run scoreboard players operation $temp PowerM = @s PowerM
execute if score $BoatCannons CmdData matches 1 store success score $recoil CmdData if entity @s[tag=Recoil]
execute as @e[type=boat,tag=Rotate,limit=1] run function game:boat/transfer

execute if entity @s[tag=respawnboat] as @e[type=boat,tag=Rotate,limit=1] at @s run function game:boat/anchor

tag @e[type=boat,tag=Rotate,limit=1] remove Rotate
tag @e[type=armor_stand,tag=Rotate,limit=1] remove Rotate