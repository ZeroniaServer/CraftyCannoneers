summon chest_minecart ~ ~ ~ {LootTable:"chests:empty",Silent:1b,Invulnerable:1b,Rotation:[-90.0f, 0.0f],Tags:["fakechest","fakelockedchest"],CustomName:[{translate:"space.-48"},{text:"\uE02D",color:"#7b7b00"},{translate:"space.-4096"}],DisplayState:{Name:"minecraft:crimson_wall_sign"}}
ride @e[type=chest_minecart,tag=fakelockedchest,limit=1] mount @s
execute on passengers run function entityid:assign_id
execute on passengers run scoreboard players set @s[type=chest_minecart] CmdData 11
item replace entity @s armor.head with diamond_hoe[custom_model_data={floats:[70.0f]}]
tag @s add Spawned