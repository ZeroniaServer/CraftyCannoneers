execute positioned -54.5 -25 8 unless entity @a[distance=..4] run particle dust 0 1 1 1 -53.6 -22.2 9.8 0.8 0.8 0 0 2 force

execute positioned -54.5 -25 8 run tag @a[distance=..4] add NearModboard
execute positioned -54.5 -25 8 run scoreboard players enable @a[distance=..4,tag=NearModboard] modisigns
execute positioned -54.5 -25 8 run effect clear @a[distance=4..,tag=ModiOwner] glowing
execute positioned -54.5 -25 8 run tag @a[distance=4..,tag=ModiOwner] remove ModiOwner
execute positioned -54.5 -25 8 run scoreboard players reset @a[distance=4..,tag=NearModboard] modisigns
execute positioned -54.5 -25 8 run tag @a[distance=4..,tag=NearModboard] remove NearModboard
execute unless entity @a[tag=ModiOwner] run bossbar set lobbybar name {"text":"Please confirm game settings at the Settings Map!","color":"aqua"}
execute if entity @a[tag=ModiOwner] run bossbar set lobbybar name ["",{"selector":"@a[tag=ModiOwner]","bold":true},{"text":" is in control of game settings!","color":"aqua"}]
bossbar set lobbybar color blue

execute unless entity @a[tag=ModiOwner] as @a[scores={modisigns=3384..},limit=1] at @s run playsound minecraft:entity.villager.work_cartographer master @a ~ ~ ~ 1 1
execute unless entity @a[tag=ModiOwner] as @a[scores={modisigns=3384..},limit=1] run tag @s add ModiOwner

effect give @a[tag=ModiOwner] glowing 1 100 true

#Timelimit
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=7853}] if score $TimeLimit CmdData matches 42069 run scoreboard players set $TimeLimit CmdData 9
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=7853}] if score $TimeLimit CmdData matches 30 run scoreboard players set $TimeLimit CmdData 42069
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=7853}] if score $TimeLimit CmdData matches 20 run scoreboard players set $TimeLimit CmdData 30
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=7853}] if score $TimeLimit CmdData matches 15 run scoreboard players set $TimeLimit CmdData 20
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=7853}] if score $TimeLimit CmdData matches 10 run scoreboard players set $TimeLimit CmdData 15
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=7853}] if score $TimeLimit CmdData matches 9 run scoreboard players set $TimeLimit CmdData 10
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=7853}] run function lobby:customizer/updatesigns
#ShipHP
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=3384}] if score $ShipHP CmdData matches 42069 run scoreboard players set $ShipHP CmdData 999
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=3384}] if score $ShipHP CmdData matches 2000 run scoreboard players set $ShipHP CmdData 42069
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=3384}] if score $ShipHP CmdData matches 1500 run scoreboard players set $ShipHP CmdData 2000
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=3384}] if score $ShipHP CmdData matches 1250 run scoreboard players set $ShipHP CmdData 1500
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=3384}] if score $ShipHP CmdData matches 1000 run scoreboard players set $ShipHP CmdData 1250
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=3384}] if score $ShipHP CmdData matches 999 run scoreboard players set $ShipHP CmdData 1000
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=3384}] run function lobby:customizer/updatesigns
#Confirm
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=5732}] run function lobby:customizer/confirm
#Restore Defaults
execute as @a[tag=ModiOwner,limit=1,scores={modisigns=6497}] run function lobby:customizer/defaults


scoreboard players add @a[tag=ModiOwner] moditimer 1
effect clear @a[tag=ModiOwner,scores={moditimer=70..}] glowing
execute as @a[tag=ModiOwner,scores={moditimer=70..}] run tag @s remove ModiOwner
scoreboard players reset @a[tag=!ModiOwner,scores={moditimer=1..}] moditimer




execute as @a unless score @s modisigns matches 0 run scoreboard players reset @s modisigns