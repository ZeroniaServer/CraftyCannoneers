#> Tutorial Advancement trigger
execute as @s[tag=FillLeft,tag=HoldGP,advancements={tutorial:objectives/objective4=true}] run advancement grant @s only tutorial:objectives/objective5
execute as @s[tag=FillRight,tag=HoldGP,advancements={tutorial:objectives/objective4=true}] run advancement grant @s only tutorial:objectives/objective5

#> Fill gunpowder
#Left
execute as @s[tag=FillLeft,tag=HoldGP] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] at @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] run playsound gunpowder master @a ~ ~ ~ 0.6 2
execute as @s[tag=FillLeft,tag=HoldGP] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run clear @s gunpowder 1
execute as @s[tag=FillLeft,tag=HoldGP] if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] unless entity @e[type=armor_stand,tag=GPDispL,scores={CmdData=7..},limit=1,sort=nearest,distance=..3] run scoreboard players add @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] CmdData 1
execute as @s[tag=FillLeft,tag=HoldGP] run function cannons:updategp
execute as @s[tag=FillLeft,tag=HoldGP] as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] run tag @s add DisplayGP
execute as @s[tag=FillLeft,tag=HoldGP] as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run scoreboard players reset @e[type=armor_stand,scores={gpdisp_time=..0},distance=..2] gpdisp_time
execute as @s[tag=FillLeft,tag=HoldGP] as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run scoreboard players set @e[type=armor_stand,scores={gpdisp_time=1..},distance=..2] gpdisp_time 1
execute as @s[tag=FillLeft,tag=HoldGP] as @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3] at @s run tag @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3] add DisplayGP

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