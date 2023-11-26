summon chest_minecart ~ ~ ~ {LootTable:"chests:empty",Silent:1b,Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["chest","lockedchest"],CustomName:'[{"translate":"space.-48"},{"text":"\\uE02D","color":"white"}]',DisplayState:{Name:"minecraft:air"}}
ride @e[type=chest_minecart,tag=lockedchest,limit=1] mount @s
execute on passengers run function entityid:assign_id
item replace entity @s armor.head with diamond_hoe{CustomModelData:70}
execute on passengers run scoreboard players set @s CmdData 30
tag @s add Spawned