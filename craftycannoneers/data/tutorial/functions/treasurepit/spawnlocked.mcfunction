summon chest_minecart ~ ~-0.05 ~ {LootTable:"chests:empty",Silent:1b,Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["fakechest","fakelockedchest"],CustomName:'{"translate":"chest.skeleton","color":"dark_red","bold":true,"underlined":true}',DisplayState:{Name:"minecraft:air"}}
scoreboard players set @e[type=chest_minecart,tag=fakelockedchest] CmdData 11
item replace entity @s armor.head with diamond_hoe{CustomModelData:70}
tag @s add Spawned