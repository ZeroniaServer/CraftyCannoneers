data modify storage craftycannoneers:boat angle set from entity @s Rotation[0]
execute on passengers if entity @s[team=Purple] run data modify storage craftycannoneers:boat color set value "purple"
execute on passengers if entity @s[team=Orange] run data modify storage craftycannoneers:boat color set value "orange"

execute at @s[tag=Sailing] run function game:boat/placeboatsailing with storage craftycannoneers:boat
ride @e[type=interaction,tag=boatoccupant,tag=passenger,limit=1] mount @e[type=boat,tag=Rotate,limit=1]

execute at @s[tag=!Sailing] run function game:boat/placeboat with storage craftycannoneers:boat

execute if entity @s[tag=1] run tag @e[type=boat,tag=Rotate,limit=1] add 1
execute if entity @s[tag=2] run tag @e[type=boat,tag=Rotate,limit=1] add 2
execute if entity @s[tag=3] run tag @e[type=boat,tag=Rotate,limit=1] add 3
execute if entity @s[tag=4] run tag @e[type=boat,tag=Rotate,limit=1] add 4

execute if entity @s[tag=1] store result score $boat1 CmdData run data get entity @e[type=boat,tag=Rotate,limit=1] UUID[0]
execute if entity @s[tag=2] store result score $boat2 CmdData run data get entity @e[type=boat,tag=Rotate,limit=1] UUID[0]
execute if entity @s[tag=3] store result score $boat3 CmdData run data get entity @e[type=boat,tag=Rotate,limit=1] UUID[0]
execute if entity @s[tag=4] store result score $boat4 CmdData run data get entity @e[type=boat,tag=Rotate,limit=1] UUID[0]

#> Transfer Boat data
execute if score $BoatCannons CmdData matches 1 run scoreboard players operation $temp CannonID = @s CannonID
execute if score $BoatCannons CmdData matches 1 run scoreboard players operation $temp cannonshot = @s cannonshot
execute if score $BoatCannons CmdData matches 1 run scoreboard players operation $temp playerUUID = @s playerUUID
execute if score $BoatCannons CmdData matches 1 run scoreboard players operation $temp PowerM = @s PowerM
execute if score $BoatCannons CmdData matches 1 store success score $recoil CmdData if entity @s[tag=Recoil]
execute if score $BoatCannons CmdData matches 1 as @e[type=boat,tag=Rotate,limit=1] run function game:boat/transfer
tag @e[type=boat,tag=Rotate,limit=1] remove Rotate

execute on passengers if entity @s[type=player] run function game:boat/mountlock
tag @s add kill
function game:boat/cannon/kill