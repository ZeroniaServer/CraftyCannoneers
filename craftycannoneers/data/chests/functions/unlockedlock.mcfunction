summon chest_minecart ~ ~ ~ {LootTable:"chests:locked_treasure",Silent:1b,Invulnerable:1b,Rotation:[-90.0f, 0.0f],CustomDisplayTile:1b,Tags:["chest","lockedchest"],CustomName:'{"translate":"chest.skeleton","color":"dark_red","bold":true,"underlined":true}',DisplayState:{Name:"minecraft:air"}}
item replace entity @s armor.head with diamond_hoe{CustomModelData:70}
scoreboard players set @e[type=chest_minecart,tag=lockedchest,limit=1,sort=nearest,distance=..1] CmdData 30
tag @s add Spawned