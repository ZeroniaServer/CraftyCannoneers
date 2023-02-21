#> Barrel Illegal Placements
execute as @s[type=armor_stand] unless block ~ ~ ~ #game:barrel_exclude run loot spawn ~ ~ ~ loot weapons:barrel
execute as @s[type=villager] unless block ~ ~ ~ #game:barrel_exclude run tp @s ~ ~-200 ~
execute unless block ~ ~ ~ #game:barrel_exclude run kill @s