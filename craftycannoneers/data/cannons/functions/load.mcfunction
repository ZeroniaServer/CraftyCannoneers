#> Tag for holding gunpowder
tag @a[nbt={SelectedItem:{id:"minecraft:gunpowder"}}] add HoldGP

#> Fill gunpowder
#Left
execute as @a[tag=FillLeft,tag=HoldGP] at @s if entity @e[tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] at @e[tag=GPDispL,limit=1,sort=nearest,distance=..3] run playsound minecraft:block.sand.break master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillLeft,tag=HoldGP] at @s if entity @e[tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run clear @s gunpowder 1
execute as @a[tag=FillLeft,tag=HoldGP] at @s if entity @e[tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run scoreboard players add @e[tag=GPDispL,limit=1,sort=nearest,distance=..3] CmdData 1
execute as @a[tag=FillLeft,tag=HoldGP] run function cannons:updategp
#Right
execute as @a[tag=FillRight,tag=HoldGP] at @s if entity @e[tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] at @e[tag=GPDispR,limit=1,sort=nearest,distance=..3] run playsound minecraft:block.sand.break master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillRight,tag=HoldGP] at @s if entity @e[tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run clear @s gunpowder 1
execute as @a[tag=FillRight,tag=HoldGP] at @s if entity @e[tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run scoreboard players add @e[tag=GPDispR,limit=1,sort=nearest,distance=..3] CmdData 1
execute as @a[tag=FillRight,tag=HoldGP] run function cannons:updategp
#Global
tag @a remove HoldGP
tag @a remove FillLeft
tag @a remove FillRight