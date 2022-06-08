execute if entity @s[tag=CannonVLeft] run tag @p[tag=clicker] add FillLeft
execute if entity @s[tag=CannonVRight] run tag @p[tag=clicker] add FillRight
execute if entity @s[tag=CannonVMain,tag=Charged] run tag @p[tag=clicker] add FillCB

#> Tag for holding gunpowder
tag @p[tag=clicker,nbt={SelectedItem:{id:"minecraft:gunpowder"}}] add HoldGP

#> Cannon Claim tag
execute at @s as @p[tag=clicker,tag=FillCB] run function cannons:checkowner
execute at @s as @p[tag=clicker,tag=FillLeft,tag=HoldGP] run function cannons:checkowner
execute at @s as @p[tag=clicker,tag=FillRight,tag=HoldGP] run function cannons:checkowner
execute at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] as @p[tag=clicker,tag=FillLeft,tag=!HoldGP] run function cannons:checkowner
execute at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] as @p[tag=clicker,tag=FillRight,tag=!HoldGP] run function cannons:checkowner