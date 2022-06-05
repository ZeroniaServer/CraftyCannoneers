#> Tag for holding gunpowder
tag @a[nbt={SelectedItem:{id:"minecraft:gunpowder"}}] add HoldGP

#> Tutorial Advancement trigger
execute as @a[tag=FillLeft,tag=HoldGP] run advancement grant @s only tutorial:fill_gunpowder
execute as @a[tag=FillRight,tag=HoldGP] run advancement grant @s only tutorial:fill_gunpowder

#> Fill gunpowder
#Left
execute as @a[tag=FillLeft,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] at @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] run playsound gunpowder master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillLeft,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run clear @s gunpowder 1
execute as @a[tag=FillLeft,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run scoreboard players add @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] CmdData 1
execute as @a[tag=FillLeft,tag=HoldGP] run function cannons:updategp
execute as @a[tag=FillLeft,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run tag @s add DisplayGP
execute as @a[tag=FillLeft,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] at @s run tag @e[tag=GPDispR,limit=1,sort=nearest,distance=..3] add DisplayGP

#Right
execute as @a[tag=FillRight,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] at @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] run playsound gunpowder master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillRight,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run clear @s gunpowder 1
execute as @a[tag=FillRight,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run scoreboard players add @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] CmdData 1
execute as @a[tag=FillRight,tag=HoldGP] run function cannons:updategp
execute as @a[tag=FillRight,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run tag @s add DisplayGP
execute as @a[tag=FillRight,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] at @s run tag @e[tag=GPDispL,limit=1,sort=nearest,distance=..3] add DisplayGP

#> Take gunpowder
execute as @a[tag=FillLeft,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run give @s gunpowder{display:{Name:'[{"text":"Gunpowder","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Used to change the power of a cannon shot.","italic":false,"color":"white"}]']}} 1
execute as @a[tag=FillLeft,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run playsound takegunpowder master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillLeft,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run scoreboard players remove @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] CmdData 1
execute as @a[tag=FillLeft,tag=!HoldGP] run function cannons:updategp
execute as @a[tag=FillLeft,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run tag @s add DisplayGP
execute as @a[tag=FillLeft,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] at @s run tag @e[tag=GPDispR,limit=1,sort=nearest,distance=..3] add DisplayGP
execute as @a[tag=FillLeft,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run scoreboard players reset @s gpdisp_time
execute as @a[tag=FillLeft,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] at @s run scoreboard players reset @e[tag=GPDispR,limit=1,sort=nearest,distance=..3] gpdisp_time

execute as @a[tag=FillRight,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run give @s gunpowder{display:{Name:'[{"text":"Gunpowder","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Used to change the power of a cannon shot.","italic":false,"color":"white"}]']}} 1
execute as @a[tag=FillRight,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run playsound takegunpowder master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillRight,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run scoreboard players remove @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] CmdData 1
execute as @a[tag=FillRight,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run tag @s add DisplayGP
execute as @a[tag=FillRight,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] at @s run tag @e[tag=GPDispL,limit=1,sort=nearest,distance=..3] add DisplayGP
execute as @a[tag=FillRight,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run scoreboard players reset @s gpdisp_time
execute as @a[tag=FillRight,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] at @s run scoreboard players reset @e[tag=GPDispL,limit=1,sort=nearest,distance=..3] gpdisp_time
execute as @a[tag=FillRight,tag=!HoldGP] run function cannons:updategp

#Global
tag @a remove HoldGP
tag @a remove FillLeft
tag @a remove FillRight


#> Display current gunpowder
scoreboard players add @e[type=armor_stand,tag=DisplayGP] gpdisp_time 1

execute as @e[type=armor_stand,tag=DisplayGP,scores={CmdData=0}] run data merge entity @s {CustomName:"\"0\""}
execute as @e[type=armor_stand,tag=DisplayGP,scores={CmdData=1}] run data merge entity @s {CustomName:"\"1\""}
execute as @e[type=armor_stand,tag=DisplayGP,scores={CmdData=2}] run data merge entity @s {CustomName:"\"2\""}
execute as @e[type=armor_stand,tag=DisplayGP,scores={CmdData=3}] run data merge entity @s {CustomName:"\"3\""}
execute as @e[type=armor_stand,tag=DisplayGP,scores={CmdData=4}] run data merge entity @s {CustomName:"\"4\""}
execute as @e[type=armor_stand,tag=DisplayGP,scores={CmdData=5}] run data merge entity @s {CustomName:"\"5\""}
execute as @e[type=armor_stand,tag=DisplayGP,scores={CmdData=6}] run data merge entity @s {CustomName:"\"6\""}
execute as @e[type=armor_stand,tag=DisplayGP,scores={CmdData=7}] run data merge entity @s {CustomName:"\"7\""}

execute as @e[type=armor_stand,tag=DisplayGP,scores={gpdisp_time=1}] run data merge entity @s {CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,scores={gpdisp_time=40}] run data merge entity @s {CustomNameVisible:0b}
execute as @e[type=armor_stand,tag=DisplayGP,scores={gpdisp_time=40}] run data remove entity @s CustomName

tag @e[type=armor_stand,tag=DisplayGP,scores={gpdisp_time=40..}] remove DisplayGP
scoreboard players reset @e[type=armor_stand,tag=!DisplayGP,scores={gpdisp_time=1..}] gpdisp_time