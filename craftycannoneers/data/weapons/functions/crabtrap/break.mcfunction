tag @s[tag=ReleaseCrab] remove Empty

particle item{item:{id:"mooshroom_spawn_egg",components:{"minecraft:custom_model_data":15}}} ~ ~0.5 ~ 0.2 0.25 0.2 0.1 40 force @a[team=!Lobby]

playsound crabtrapbreak2 master @a ~ ~ ~ 1 1.2
playsound crabtrapbreak3 master @a ~ ~ ~ 0.6 1.2

execute store result entity @s item.tag.durability int 1 run scoreboard players get @s TrapDurability
execute if score @s TrapDurability matches 0.. run loot spawn ~ ~0.1 ~ loot weapons:crab_trap
execute if score @s TrapDurability matches ..-1 run playsound crabtrapbreak4 master @a ~ ~ ~ 2 1
execute on vehicle run kill
kill @s