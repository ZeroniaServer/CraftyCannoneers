particle item mooshroom_spawn_egg{CustomModelData:1} ~ ~0.5 ~ 0.2 0.25 0.2 0.1 40 force
playsound blastbarrelignite master @a ~ ~ ~ 0.6 0.9
loot spawn ~ ~0.1 ~ loot weapons:barrel
loot spawn ~ ~0.1 ~ loot weapons:gunpowder_return
tag @e[type=villager,tag=BarrelVillager,limit=1,sort=nearest] add IgniteBarrel
kill @s