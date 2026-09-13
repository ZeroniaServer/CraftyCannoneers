advancement revoke @s only game:usecrossbow
scoreboard players set @s useCrossbow 2
tag @s remove loaded
execute if items entity @s weapon.mainhand crossbow run item modify entity @s weapon.mainhand [{"type": "minecraft:set_components","components": {"!minecraft:charged_projectiles":{}}}]
execute if items entity @s weapon.offhand crossbow run item modify entity @s weapon.offhand [{"type": "minecraft:set_components","components": {"!minecraft:charged_projectiles":{}}}]