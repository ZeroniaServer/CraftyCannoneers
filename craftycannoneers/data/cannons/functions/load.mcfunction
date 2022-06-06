#> Tag for holding gunpowder
tag @a[nbt={SelectedItem:{id:"minecraft:gunpowder"}}] add HoldGP

#> Tutorial Advancement trigger
execute as @a[tag=FillLeft,tag=HoldGP] run advancement grant @s only tutorial:fill_gunpowder
execute as @a[tag=FillRight,tag=HoldGP] run advancement grant @s only tutorial:fill_gunpowder

#> Cannon Claim tag
execute as @a[tag=FillLeft,tag=HoldGP] at @s run function cannons:checkowner
execute as @a[tag=FillRight,tag=HoldGP] at @s run function cannons:checkowner
execute as @a[tag=FillLeft,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run function cannons:checkowner
execute as @a[tag=FillRight,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run function cannons:checkowner

#> Fill gunpowder
#Left
execute as @a[tag=FillLeft,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] at @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] run playsound gunpowder master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillLeft,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run clear @s gunpowder 1
execute as @a[tag=FillLeft,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run scoreboard players add @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] CmdData 1
execute as @a[tag=FillLeft,tag=HoldGP] run function cannons:updategp
execute as @a[tag=FillLeft,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] run tag @s add DisplayGP
execute as @a[tag=FillLeft,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run scoreboard players reset @e[type=armor_stand,scores={gpdisp_time=..0},distance=..2] gpdisp_time
execute as @a[tag=FillLeft,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run scoreboard players set @e[type=armor_stand,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1
execute as @a[tag=FillLeft,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run tag @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] add DisplayGP

#Right
execute as @a[tag=FillRight,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] at @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] run playsound gunpowder master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillRight,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run clear @s gunpowder 1
execute as @a[tag=FillRight,tag=HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispR,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run scoreboard players add @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] CmdData 1
execute as @a[tag=FillRight,tag=HoldGP] run function cannons:updategp
execute as @a[tag=FillRight,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] run tag @s add DisplayGP
execute as @a[tag=FillRight,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] at @s run scoreboard players reset @e[type=armor_stand,scores={gpdisp_time=..0},distance=..2] gpdisp_time
execute as @a[tag=FillRight,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] at @s run scoreboard players set @e[type=armor_stand,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1
execute as @a[tag=FillRight,tag=HoldGP] at @s as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] at @s run tag @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] add DisplayGP

#> Take gunpowder
execute as @a[tag=FillLeft,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run give @s gunpowder{display:{Name:'[{"text":"Gunpowder","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Used to change the power of a cannon shot.","italic":false,"color":"white"}]']}} 1
execute as @a[tag=FillLeft,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run playsound takegunpowder master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillLeft,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run scoreboard players remove @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] CmdData 1
execute as @a[tag=FillLeft,tag=!HoldGP] run function cannons:updategp
execute as @a[tag=FillLeft,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] run tag @s add DisplayGP
execute as @a[tag=FillLeft,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run tag @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] add DisplayGP
execute as @a[tag=FillLeft,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run scoreboard players reset @e[type=armor_stand,scores={gpdisp_time=..0},distance=..2] gpdisp_time
execute as @a[tag=FillLeft,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run scoreboard players set @e[type=armor_stand,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1

execute as @a[tag=FillRight,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run give @s gunpowder{display:{Name:'[{"text":"Gunpowder","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Used to change the power of a cannon shot.","italic":false,"color":"white"}]']}} 1
execute as @a[tag=FillRight,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run playsound takegunpowder master @a ~ ~ ~ 0.6 2
execute as @a[tag=FillRight,tag=!HoldGP] at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] run scoreboard players remove @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] CmdData 1
execute as @a[tag=FillRight,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest] run tag @s add DisplayGP
execute as @a[tag=FillRight,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest] at @s run tag @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] add DisplayGP
execute as @a[tag=FillRight,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest] at @s run scoreboard players reset @e[type=armor_stand,scores={gpdisp_time=..0},distance=..2] gpdisp_time
execute as @a[tag=FillRight,tag=!HoldGP] at @s as @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest] at @s run scoreboard players set @e[type=armor_stand,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1
execute as @a[tag=FillRight,tag=!HoldGP] run function cannons:updategp

#Global
tag @a remove HoldGP
tag @a remove FillLeft
tag @a remove FillRight


#> Display current gunpowder
execute as @e[type=armor_stand,tag=DisplayGP] at @s if entity @e[type=armor_stand,tag=CannonDisp,scores={cannonclaim=1..},distance=..2,limit=1] run scoreboard players add @s gpdisp_time 1

execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispL,scores={gpdisp_time=1}] at @s run kill @e[type=area_effect_cloud,tag=GPDispText,distance=..3,limit=2]
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispL,scores={gpdisp_time=1}] at @s at @e[type=villager,tag=CannonVLeft,limit=1,sort=nearest,distance=..2] run summon area_effect_cloud ~ ~0.2 ~ {Tags:["cannon","GPDispText","1"],Duration:2000000000}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispL,scores={gpdisp_time=1}] at @s at @e[type=villager,tag=CannonVRight,limit=1,sort=nearest,distance=..2] run summon area_effect_cloud ~ ~0.2 ~ {Tags:["cannon","GPDispText","2"],Duration:2000000000}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispL,scores={CmdData=0,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:"\"0\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispL,scores={CmdData=1,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:"\"1\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispL,scores={CmdData=2,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:"\"2\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispL,scores={CmdData=3,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:"\"3\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispL,scores={CmdData=4,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:"\"4\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispL,scores={CmdData=5,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:"\"5\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispL,scores={CmdData=6,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:"\"6\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispL,scores={CmdData=7,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2] {CustomName:"\"7\"",CustomNameVisible:1b}

execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispR,scores={CmdData=0,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:"\"0\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispR,scores={CmdData=1,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:"\"1\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispR,scores={CmdData=2,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:"\"2\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispR,scores={CmdData=3,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:"\"3\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispR,scores={CmdData=4,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:"\"4\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispR,scores={CmdData=5,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:"\"5\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispR,scores={CmdData=6,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:"\"6\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,tag=GPDispR,scores={CmdData=7,gpdisp_time=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2] {CustomName:"\"7\"",CustomNameVisible:1b}
execute as @e[type=armor_stand,tag=DisplayGP,scores={gpdisp_time=120..}] at @s run kill @e[type=area_effect_cloud,tag=GPDispText,tag=1,limit=1,sort=nearest,distance=..2]
execute as @e[type=armor_stand,tag=DisplayGP,scores={gpdisp_time=120..}] at @s run kill @e[type=area_effect_cloud,tag=GPDispText,tag=2,limit=1,sort=nearest,distance=..2]
tag @e[type=armor_stand,tag=DisplayGP,scores={gpdisp_time=120..}] remove DisplayGP
scoreboard players reset @e[type=armor_stand,tag=!DisplayGP,scores={gpdisp_time=1..}] gpdisp_time