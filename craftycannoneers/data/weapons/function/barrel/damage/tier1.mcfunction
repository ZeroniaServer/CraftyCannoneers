#> Damage zones
damage @s[distance=..1] 9.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[distance=..1] add damaged

damage @s[distance=..2] 7.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[distance=..2] add damaged

damage @s[tag=!damaged,distance=..3] 5.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[tag=!damaged,distance=..3] add damaged

damage @s[tag=!damaged,distance=..4] 3.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[tag=!damaged,distance=..4] add damaged

damage @s[tag=!damaged,distance=..5] 1.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]

tag @s[tag=damaged] remove damaged