#> Damage zones
damage @s[distance=..1] 12.5 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[distance=..1] add damaged

damage @s[distance=..2] 10.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[distance=..2] add damaged

damage @s[tag=!damaged,distance=..3] 7.5 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[tag=!damaged,distance=..3] add damaged

damage @s[tag=!damaged,distance=..4] 5.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[tag=!damaged,distance=..4] add damaged

damage @s[tag=!damaged,distance=..5] 2.5 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]
tag @s[tag=!damaged,distance=..5] add damaged

damage @s[tag=!damaged,distance=..6] 1.0 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]

damage @s[tag=!damaged,distance=..7.5] 0.5 mob_attack by @e[type=slime,tag=BarrelSlime,limit=1,sort=nearest]

tag @s[tag=damaged] remove damaged