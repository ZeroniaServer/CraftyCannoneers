particle item{item:{id:"mooshroom_spawn_egg",components:{"minecraft:custom_model_data":{floats:[1.0f]}}}} ~ ~0.5 ~ 0.2 0.25 0.2 0.1 40 force @a[team=!Lobby]
playsound blastbarrelbreak master @a[distance=..2] ~ ~ ~ 0.4 0.9
playsound blastbarrelbreak master @a[distance=2.0001..3] ~ ~ ~ 0.2 0.9
playsound blastbarrelbreak master @a[distance=3.0001..] ~ ~ ~ 0.1 0.9
loot spawn ~ ~0.1 ~ loot weapons:barrel
loot spawn ~ ~0.1 ~ loot weapons:gunpowder_return
kill @e[type=interaction,tag=BlastBarrel,distance=..1,limit=2,sort=nearest]
execute as @e[type=bat,tag=BlastBarrel,limit=1,sort=nearest] run function arenaclear:kill
kill