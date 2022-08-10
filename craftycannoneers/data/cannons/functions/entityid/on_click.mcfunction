execute if entity @s[type=wandering_trader,tag=Trader] at @s run playsound trader_ambient master @p[tag=clicker] ~ ~ ~ 0.5
execute if entity @s[type=wandering_trader,tag=Teacher] at @s run playsound teacher_ambient master @p[tag=clicker] ~ ~ ~ 0.5

execute if entity @s[tag=CannonVLeft] run tag @p[tag=clicker] add FillLeft
execute if entity @s[tag=CannonVRight] run tag @p[tag=clicker] add FillRight
execute if entity @s[tag=CannonVMain,tag=Charged] run tag @p[tag=clicker] add FillCB

#> Tag for holding gunpowder
tag @p[tag=clicker,nbt={SelectedItem:{id:"minecraft:gunpowder"}}] add HoldGP

#> Tag for holding cannonballs
#Normal
tag @p[tag=clicker,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:1b}}}] add HoldCB
#Hot
tag @p[tag=clicker,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:2b}}}] add HoldFB
#Cluster
tag @p[tag=clicker,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:3b}}}] add HoldCBC
#Gas
tag @p[tag=clicker,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:4b}}}] add HoldGCB
#Chain
tag @p[tag=clicker,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:5b}}}] add HoldCCB
#Bouncy
tag @p[tag=clicker,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:6b}}}] add HoldBCB
#Player
tag @p[tag=clicker,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:7b}}}] add HoldPCB
#Tracer
tag @p[tag=clicker,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:8b}}}] add HoldTCB
#Golden
tag @p[tag=clicker,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:9b}}}] add HoldGOCB

#> Cannon Claim tag
execute at @s as @p[tag=clicker,tag=FillCB] run function cannons:checkowner
execute at @s as @p[tag=clicker,tag=FillLeft,tag=HoldGP] run function cannons:checkowner
execute at @s as @p[tag=clicker,tag=FillRight,tag=HoldGP] run function cannons:checkowner
execute at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] as @p[tag=clicker,tag=FillLeft,tag=!HoldGP] run function cannons:checkowner
execute at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] as @p[tag=clicker,tag=FillRight,tag=!HoldGP] run function cannons:checkowner
execute at @s run tag @p[tag=clicker,tag=FillLeft,tag=!HoldGP] remove FillLeft
execute at @s run tag @p[tag=clicker,tag=FillRight,tag=!HoldGP] remove FillRight