scoreboard players operation $currentcheck playerUUID = @s playerUUID

#> Tutorial Advancement trigger
execute as @s[tag=FillLeft,tag=HoldGP,advancements={tutorial:objectives/objective4=true}] run advancement grant @s only tutorial:objectives/objective5
execute as @s[tag=FillRight,tag=HoldGP,advancements={tutorial:objectives/objective4=true}] run advancement grant @s only tutorial:objectives/objective5

particle minecraft:angry_villager ~ ~ ~ 0 0 0 1 1 force

execute as @e[type=armor_stand,tag=CannonDisp,tag=!Owned,distance=..3,limit=1,sort=nearest] if score @s playerUUID matches 0 run tag @s add NoOwner
execute as @e[type=armor_stand,tag=CannonDisp,tag=!NoOwner,distance=..3,limit=1,sort=nearest] if score @s playerUUID = $currentcheck playerUUID run tag @s add Owned

execute as @e[type=armor_stand,tag=CannonDisp,tag=NoOwner,limit=1,sort=nearest] at @s run particle minecraft:angry_villager ~ ~2 ~ 0 0 0 1 1 force
execute as @e[type=armor_stand,tag=CannonDisp,tag=Owned,limit=1,sort=nearest] at @s run particle minecraft:bubble ~ ~2 ~ 0 0 0 1 1 force

execute as @e[type=armor_stand,tag=Owned,limit=1,sort=nearest] if score @s playerUUID = $currentcheck playerUUID run scoreboard players operation $currentcannon playerUUID = @s playerUUID
execute if entity @e[type=armor_stand,tag=NoOwner,limit=1,sort=nearest] run scoreboard players operation $currentcannon playerUUID = @s playerUUID
execute as @e[type=armor_stand,tag=NoOwner,limit=1,sort=nearest] run tag @s add NewClaim
execute as @e[type=armor_stand,tag=NoOwner,limit=1,sort=nearest] run scoreboard players operation @s playerUUID = $currentcannon playerUUID
execute as @e[type=armor_stand,tag=Owned,limit=1,sort=nearest] run scoreboard players operation @s playerUUID = $currentcannon playerUUID
tag @e[type=armor_stand,tag=NoOwner] remove NoOwner
tag @e[type=armor_stand,tag=Owned] remove Owned

execute as @e[type=armor_stand,tag=NewClaim] at @s run particle minecraft:cloud ~ ~2 ~ 0 0 0 0 1 force

execute as @e[type=armor_stand,tag=CannonDisp] if score $currentcannon playerUUID = @s playerUUID run tag @s add CurrentCheck
execute as @e[type=armor_stand,tag=CurrentCheck] at @s run tag @e[type=villager,tag=CannonVLeft,limit=1,sort=nearest,distance=..2] add CurrentCheck
execute as @e[type=armor_stand,tag=CurrentCheck] at @s run tag @e[type=villager,tag=CannonVRight,limit=1,sort=nearest,distance=..2] add CurrentCheck
execute as @e[type=armor_stand,tag=CurrentCheck] at @s run tag @e[type=villager,tag=CannonVMain,limit=1,sort=nearest,distance=..2] add CurrentCheck

execute unless entity @e[type=armor_stand,tag=CurrentCheck] if entity @e[type=armor_stand,tag=CannonDisp,tag=!CurrentCheck,distance=..3] run tellraw @s {"text":"This Cannon is currently occupied!","italic":true,"color":"red"}
execute unless entity @e[type=armor_stand,tag=CurrentCheck] run tag @s remove FillLeft
execute unless entity @e[type=armor_stand,tag=CurrentCheck] run tag @s remove FillRight
execute unless entity @e[type=armor_stand,tag=CurrentCheck] run tag @s remove FillCB

execute if entity @e[type=armor_stand,tag=NewClaim] run function cannons:unclaimmultiple

scoreboard players set @e[type=armor_stand,tag=CurrentCheck,scores={cannonclaim=4..120}] cannonclaim 3

#> Fill gunpowder
#Left
execute as @s[tag=FillLeft,tag=HoldGP] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] at @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] run playsound gunpowder master @a ~ ~ ~ 0.6 2
execute as @s[tag=FillLeft,tag=HoldGP] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run clear @s gunpowder 1
execute as @s[tag=FillLeft,tag=HoldGP] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run scoreboard players add @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] CmdData 1
execute as @s[tag=FillLeft,tag=HoldGP] run function cannons:updategp
execute as @s[tag=FillLeft,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] run tag @s add DisplayGP
execute as @s[tag=FillLeft,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run scoreboard players reset @e[type=armor_stand,scores={gpdisp_time=..0},distance=..2] gpdisp_time
execute as @s[tag=FillLeft,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run scoreboard players set @e[type=armor_stand,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1
execute as @s[tag=FillLeft,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run tag @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] add DisplayGP

#Right
execute as @s[tag=FillRight,tag=HoldGP] if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] at @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] run playsound gunpowder master @a ~ ~ ~ 0.6 2
execute as @s[tag=FillRight,tag=HoldGP] if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run clear @s gunpowder 1
execute as @s[tag=FillRight,tag=HoldGP] if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run scoreboard players add @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] CmdData 1
execute as @s[tag=FillRight,tag=HoldGP] run function cannons:updategp
execute as @s[tag=FillRight,tag=HoldGP] as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] run tag @s add DisplayGP
execute as @s[tag=FillRight,tag=HoldGP] as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] at @s run scoreboard players reset @e[type=armor_stand,scores={gpdisp_time=..0},distance=..2] gpdisp_time
execute as @s[tag=FillRight,tag=HoldGP] as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] at @s run scoreboard players set @e[type=armor_stand,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1
execute as @s[tag=FillRight,tag=HoldGP] as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] at @s run tag @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] add DisplayGP

#> Take gunpowder
execute as @s[tag=FillLeft,tag=!HoldGP] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run give @s gunpowder{display:{Name:'[{"text":"Gunpowder","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Used to change the power of a cannon shot.","italic":false,"color":"white"}]']}} 1
execute as @s[tag=FillLeft,tag=!HoldGP] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run playsound takegunpowder master @a ~ ~ ~ 0.6 2
execute as @s[tag=FillLeft,tag=!HoldGP] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run scoreboard players remove @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] CmdData 1
execute as @s[tag=FillLeft,tag=!HoldGP] run function cannons:updategp
execute as @s[tag=FillLeft,tag=!HoldGP] as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] run tag @s add DisplayGP
execute as @s[tag=FillLeft,tag=!HoldGP] as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run tag @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] add DisplayGP
execute as @s[tag=FillLeft,tag=!HoldGP] as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run scoreboard players reset @e[type=armor_stand,scores={gpdisp_time=..0},distance=..2] gpdisp_time
execute as @s[tag=FillLeft,tag=!HoldGP] as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run scoreboard players set @e[type=armor_stand,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1

execute as @s[tag=FillRight,tag=!HoldGP] if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run give @s gunpowder{display:{Name:'[{"text":"Gunpowder","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Used to change the power of a cannon shot.","italic":false,"color":"white"}]']}} 1
execute as @s[tag=FillRight,tag=!HoldGP] if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run playsound takegunpowder master @a ~ ~ ~ 0.6 2
execute as @s[tag=FillRight,tag=!HoldGP] if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run scoreboard players remove @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] CmdData 1
execute as @s[tag=FillRight,tag=!HoldGP] as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest] run tag @s add DisplayGP
execute as @s[tag=FillRight,tag=!HoldGP] as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest] at @s run tag @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] add DisplayGP
execute as @s[tag=FillRight,tag=!HoldGP] as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest] at @s run scoreboard players reset @e[type=armor_stand,scores={gpdisp_time=..0},distance=..2] gpdisp_time
execute as @s[tag=FillRight,tag=!HoldGP] as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest] at @s run scoreboard players set @e[type=armor_stand,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1
execute as @s[tag=FillRight,tag=!HoldGP] run function cannons:updategp

#Remove tags
tag @s remove HoldGP
tag @s remove FillLeft
tag @s remove FillRight

tag @e[type=armor_stand,tag=CurrentCheck] remove CurrentCheck

scoreboard players reset $currentcannon playerUUID
scoreboard players reset $currentcheck playerUUID