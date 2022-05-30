#> Tag for holding gunpowder
tag @a[nbt={SelectedItem:{id:"minecraft:gunpowder"}}] add HoldGP

#> Tutorial Advancement trigger
execute as @a[tag=FillLeft,tag=HoldGP] run advancement grant @s only tutorial:fill_gunpowder
execute as @a[tag=FillRight,tag=HoldGP] run advancement grant @s only tutorial:fill_gunpowder

#> Fill gunpowder
#Left
execute as @a[tag=FillLeft,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] at @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] run playsound minecraft:block.sand.break master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillLeft,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run clear @s gunpowder 1
execute as @a[tag=FillLeft,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run scoreboard players add @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] CmdData 1
execute as @a[tag=FillLeft,tag=HoldGP] run function cannons:updategp
#Right
execute as @a[tag=FillRight,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] at @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] run playsound minecraft:block.sand.break master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillRight,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run clear @s gunpowder 1
execute as @a[tag=FillRight,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run scoreboard players add @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] CmdData 1
execute as @a[tag=FillRight,tag=HoldGP] run function cannons:updategp

#> Take gunpowder
execute as @a[tag=FillLeft,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run give @s gunpowder{display:{Name:'[{"text":"Gunpowder","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Used to change the power of a cannon shot.","italic":false,"color":"white"}]']}} 1
execute as @a[tag=FillLeft,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run playsound minecraft:block.sand.hit master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillLeft,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run scoreboard players remove @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] CmdData 1
execute as @a[tag=FillLeft,tag=!HoldGP] run function cannons:updategp

execute as @a[tag=FillRight,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run give @s gunpowder{display:{Name:'[{"text":"Gunpowder","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Used to change the power of a cannon shot.","italic":false,"color":"white"}]']}} 1
execute as @a[tag=FillRight,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run playsound minecraft:block.sand.hit master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillRight,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run scoreboard players remove @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] CmdData 1
execute as @a[tag=FillRight,tag=!HoldGP] run function cannons:updategp

#Global
tag @a remove HoldGP
tag @a remove FillLeft
tag @a remove FillRight