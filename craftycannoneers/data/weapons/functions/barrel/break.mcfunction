particle item mooshroom_spawn_egg{CustomModelData:1} ~ ~0.5 ~ 0.2 0.25 0.2 0.1 40 force
playsound blastbarrelbreak master @a ~ ~ ~ 0.6 0.9
loot spawn ~ ~0.1 ~ loot weapons:barrel
loot spawn ~ ~0.1 ~ loot weapons:gunpowder_return
kill @e[type=interaction,tag=BlastBarrel,distance=..1,limit=2,sort=nearest]
execute as @e[type=bat,tag=BlastBarrel,limit=1,sort=nearest] run function arenaclear:kill
kill