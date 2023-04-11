#> Damage zones
damage @s[distance=..2] 20.0 mob_attack by @e[type=slime,tag=BlastSlime,tag=CargoSlime,limit=1]
tag @s[distance=..2] add damaged

damage @s[tag=!damaged,distance=..3] 16.0 mob_attack by @e[type=slime,tag=BlastSlime,tag=CargoSlime,limit=1]
tag @s[tag=!damaged,distance=..3] add damaged

damage @s[tag=!damaged,distance=..4] 12.0 mob_attack by @e[type=slime,tag=BlastSlime,tag=CargoSlime,limit=1]
tag @s[tag=!damaged,distance=..4] add damaged

damage @s[tag=!damaged,distance=..5] 8.0 mob_attack by @e[type=slime,tag=BlastSlime,tag=CargoSlime,limit=1]
tag @s[tag=!damaged,distance=..5] add damaged

damage @s[tag=!damaged,distance=..6] 4.0 mob_attack by @e[type=slime,tag=BlastSlime,tag=CargoSlime,limit=1]
tag @s[tag=!damaged,distance=..6] add damaged

damage @s[tag=!damaged,distance=..7] 2.0 mob_attack by @e[type=slime,tag=BlastSlime,tag=CargoSlime,limit=1]

tag @s[tag=damaged] remove damaged