#> Damage zones
damage @s[distance=..1] 18.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[distance=..1] add damaged

damage @s[distance=..2] 15.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[distance=..2] add damaged

damage @s[tag=!damaged,distance=..3] 12.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[tag=!damaged,distance=..3] add damaged

damage @s[tag=!damaged,distance=..4] 9.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[tag=!damaged,distance=..4] add damaged

damage @s[tag=!damaged,distance=..5] 6.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[tag=!damaged,distance=..5] add damaged

damage @s[tag=!damaged,distance=..6] 3.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[tag=!damaged,distance=..6] add damaged

damage @s[tag=!damaged,distance=..7] 1.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]

tag @s[tag=damaged] remove damaged