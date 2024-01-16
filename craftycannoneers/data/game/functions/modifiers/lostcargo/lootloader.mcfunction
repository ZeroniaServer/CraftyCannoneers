#> Gunpowder
loot replace entity @s[tag=CBGunpowder,scores={LootLoader=0}] container.0 loot chests:cargo/gunpowder
loot replace entity @s[tag=CBGunpowder,scores={LootLoader=4}] container.1 loot chests:cargo/gunpowder
loot replace entity @s[tag=CBGunpowder,scores={LootLoader=8}] container.2 loot chests:cargo/gunpowder
loot replace entity @s[tag=CBGunpowder,scores={LootLoader=12}] container.3 loot chests:cargo/gunpowder
loot replace entity @s[tag=CBGunpowder,scores={LootLoader=16}] container.4 loot chests:cargo/gunpowder

#> Gold
loot replace entity @s[tag=CBGold,scores={LootLoader=0}] container.0 loot chests:cargo/gold
loot replace entity @s[tag=CBGold,scores={LootLoader=4}] container.1 loot chests:cargo/gold
loot replace entity @s[tag=CBGold,scores={LootLoader=8}] container.2 loot chests:cargo/gold
loot replace entity @s[tag=CBGold,scores={LootLoader=12}] container.3 loot chests:cargo/gold
loot replace entity @s[tag=CBGold,scores={LootLoader=16}] container.4 loot chests:cargo/gold

#> Weapons
loot replace entity @s[tag=CBWeapons,scores={LootLoader=0}] container.0 loot chests:cargo/weapons
loot replace entity @s[tag=CBWeapons,scores={LootLoader=4}] container.1 loot chests:cargo/weapons
loot replace entity @s[tag=CBWeapons,scores={LootLoader=8}] container.2 loot chests:cargo/weapons
loot replace entity @s[tag=CBWeapons,scores={LootLoader=12}] container.3 loot chests:cargo/weapons
loot replace entity @s[tag=CBWeapons,scores={LootLoader=16}] container.4 loot chests:cargo/weapons

#> Cannonballs
loot replace entity @s[tag=CBCannonball,scores={LootLoader=0}] container.0 loot chests:cargo/cannonball
loot replace entity @s[tag=CBCannonball,scores={LootLoader=4}] container.1 loot chests:cargo/cannonball
loot replace entity @s[tag=CBCannonball,scores={LootLoader=8}] container.2 loot chests:cargo/cannonball
loot replace entity @s[tag=CBCannonball,scores={LootLoader=12}] container.3 loot chests:cargo/cannonball
loot replace entity @s[tag=CBCannonball,scores={LootLoader=16}] container.4 loot chests:cargo/cannonball

#> Movement
loot replace entity @s[tag=CBMovement,scores={LootLoader=0}] container.0 loot chests:cargo/movement
loot replace entity @s[tag=CBMovement,scores={LootLoader=4}] container.1 loot chests:cargo/movement
loot replace entity @s[tag=CBMovement,scores={LootLoader=8}] container.2 loot chests:cargo/movement
loot replace entity @s[tag=CBMovement,scores={LootLoader=12}] container.3 loot chests:cargo/movement
loot replace entity @s[tag=CBMovement,scores={LootLoader=16}] container.4 loot chests:cargo/movement

#> Boarding
loot replace entity @s[tag=CBBoarding,scores={LootLoader=0}] container.0 loot chests:cargo/boarding
loot replace entity @s[tag=CBBoarding,scores={LootLoader=4}] container.1 loot chests:cargo/boarding
loot replace entity @s[tag=CBBoarding,scores={LootLoader=8}] container.2 loot chests:cargo/boarding
loot replace entity @s[tag=CBBoarding,scores={LootLoader=12}] container.3 loot chests:cargo/boarding
loot replace entity @s[tag=CBBoarding,scores={LootLoader=16}] container.4 loot chests:cargo/boarding

#> NoDrop modifiers for Training Area
item modify entity @s[tag=CargoHopperFake,scores={LootLoader=0}] container.0 weapons:no_drop
item modify entity @s[tag=CargoHopperFake,scores={LootLoader=4}] container.1 weapons:no_drop
item modify entity @s[tag=CargoHopperFake,scores={LootLoader=8}] container.2 weapons:no_drop
item modify entity @s[tag=CargoHopperFake,scores={LootLoader=12}] container.3 weapons:no_drop
item modify entity @s[tag=CargoHopperFake,scores={LootLoader=16}] container.4 weapons:no_drop

scoreboard players set @s[scores={LootLoader=16..}] LootLoader 32