tag @s[tag=!FireCannon,scores={PowerM=1..}] add Recoil
execute if entity @s[tag=!FireCannon] on passengers run item replace entity @s[tag=BoatCannonCart] container.0 with diamond_hoe{CustomModelData:137}
execute if entity @s[tag=FireCannon] on passengers run item replace entity @s[tag=BoatCannonCart] container.0 with diamond_hoe{CustomModelData:144}