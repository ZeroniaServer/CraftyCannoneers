summon chest_minecart ~ ~ ~ {LootTable:"chests:empty",Silent:1b,Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["chest","lockedchest","new"],CustomName:'[{"translate":"space.-48"},{"text":"\\uE02D","color":"white"},{"translate":"space.-4096"}]',DisplayState:{Name:"minecraft:air"}}
ride @e[type=chest_minecart,tag=lockedchest,tag=new,limit=1] mount @s
execute on passengers run function entityid:assign_id
execute on passengers run tag @s[tag=new] remove new
item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data={floats:[70.0f]}]
execute on passengers run scoreboard players set @s CmdData 30
tag @s add Spawned