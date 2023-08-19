execute if score @s PowerM matches 0 on passengers run item replace entity @s[tag=BoatCannonBarrel] container.0 with diamond_hoe{CustomModelData:125}
execute if score @s PowerM matches 1 on passengers run item replace entity @s[tag=BoatCannonBarrel] container.0 with diamond_hoe{CustomModelData:126}
execute if score @s PowerM matches 2 on passengers run item replace entity @s[tag=BoatCannonBarrel] container.0 with diamond_hoe{CustomModelData:127}
execute if score @s PowerM matches 3 on passengers run item replace entity @s[tag=BoatCannonBarrel] container.0 with diamond_hoe{CustomModelData:128}
execute if score @s PowerM matches 4 on passengers run item replace entity @s[tag=BoatCannonBarrel] container.0 with diamond_hoe{CustomModelData:129}
execute if score @s PowerM matches 5 on passengers run item replace entity @s[tag=BoatCannonBarrel] container.0 with diamond_hoe{CustomModelData:130}

execute if entity @s[tag=FireCannon,tag=!OnFire] on passengers run item replace entity @s[tag=BoatCannonBarrel] container.0 with diamond_hoe{CustomModelData:131}
execute if entity @s[scores={cannonshot=32},tag=!OnFire] on passengers run item replace entity @s[tag=BoatCannonBarrel] container.0 with diamond_hoe{CustomModelData:125}
execute if entity @s[tag=OnFire] on passengers run item replace entity @s[tag=BoatCannonBarrel] container.0 with diamond_hoe{CustomModelData:132}