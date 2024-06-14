tag @s add hasitem
tag @s add itemsprint

execute on passengers run data modify entity @s item set from storage craftycannoneers:inventory Result[0]

execute if score $steal CmdData matches 0 run item replace entity @a[tag=victim,limit=1] hotbar.0 with air
execute if score $steal CmdData matches 1 run item replace entity @a[tag=victim,limit=1] hotbar.1 with air
execute if score $steal CmdData matches 2 run item replace entity @a[tag=victim,limit=1] hotbar.2 with air
execute if score $steal CmdData matches 3 run item replace entity @a[tag=victim,limit=1] hotbar.3 with air
execute if score $steal CmdData matches 4 run item replace entity @a[tag=victim,limit=1] hotbar.4 with air
execute if score $steal CmdData matches 5 run item replace entity @a[tag=victim,limit=1] hotbar.5 with air
execute if score $steal CmdData matches 6 run item replace entity @a[tag=victim,limit=1] hotbar.6 with air
execute if score $steal CmdData matches 7 run item replace entity @a[tag=victim,limit=1] hotbar.7 with air
execute if score $steal CmdData matches 8 run item replace entity @a[tag=victim,limit=1] hotbar.8 with air
execute if score $steal CmdData matches 9 run item replace entity @a[tag=victim,limit=1] inventory.0 with air
execute if score $steal CmdData matches 10 run item replace entity @a[tag=victim,limit=1] inventory.1 with air
execute if score $steal CmdData matches 11 run item replace entity @a[tag=victim,limit=1] inventory.2 with air
execute if score $steal CmdData matches 12 run item replace entity @a[tag=victim,limit=1] inventory.3 with air
execute if score $steal CmdData matches 13 run item replace entity @a[tag=victim,limit=1] inventory.4 with air
execute if score $steal CmdData matches 14 run item replace entity @a[tag=victim,limit=1] inventory.5 with air
execute if score $steal CmdData matches 15 run item replace entity @a[tag=victim,limit=1] inventory.6 with air
execute if score $steal CmdData matches 16 run item replace entity @a[tag=victim,limit=1] inventory.7 with air
execute if score $steal CmdData matches 17 run item replace entity @a[tag=victim,limit=1] inventory.8 with air
execute if score $steal CmdData matches 18 run item replace entity @a[tag=victim,limit=1] inventory.9 with air
execute if score $steal CmdData matches 19 run item replace entity @a[tag=victim,limit=1] inventory.10 with air
execute if score $steal CmdData matches 20 run item replace entity @a[tag=victim,limit=1] inventory.11 with air
execute if score $steal CmdData matches 21 run item replace entity @a[tag=victim,limit=1] inventory.12 with air
execute if score $steal CmdData matches 22 run item replace entity @a[tag=victim,limit=1] inventory.13 with air
execute if score $steal CmdData matches 23 run item replace entity @a[tag=victim,limit=1] inventory.14 with air
execute if score $steal CmdData matches 24 run item replace entity @a[tag=victim,limit=1] inventory.15 with air
execute if score $steal CmdData matches 25 run item replace entity @a[tag=victim,limit=1] inventory.16 with air
execute if score $steal CmdData matches 26 run item replace entity @a[tag=victim,limit=1] inventory.17 with air
execute if score $steal CmdData matches 27 run item replace entity @a[tag=victim,limit=1] inventory.18 with air
execute if score $steal CmdData matches 28 run item replace entity @a[tag=victim,limit=1] inventory.19 with air
execute if score $steal CmdData matches 29 run item replace entity @a[tag=victim,limit=1] inventory.20 with air
execute if score $steal CmdData matches 30 run item replace entity @a[tag=victim,limit=1] inventory.21 with air
execute if score $steal CmdData matches 31 run item replace entity @a[tag=victim,limit=1] inventory.22 with air
execute if score $steal CmdData matches 32 run item replace entity @a[tag=victim,limit=1] inventory.23 with air
execute if score $steal CmdData matches 33 run item replace entity @a[tag=victim,limit=1] inventory.24 with air
execute if score $steal CmdData matches 34 run item replace entity @a[tag=victim,limit=1] inventory.25 with air
execute if score $steal CmdData matches 35 run item replace entity @a[tag=victim,limit=1] inventory.26 with air
execute if score $steal CmdData matches -106 run item replace entity @a[tag=victim,limit=1] weapon.offhand with air

tag @s add roam
tag @s remove follow
tag @s remove steal
scoreboard players reset @s crabtime
scoreboard players set @s crabmode 0
attribute @s minecraft:generic.follow_range base set 0

playsound minecraft:entity.item.pickup master @a ~ ~ ~ 0.6 1.2