execute as @e[type=slime,tag=!inship,tag=Purple,tag=!WeakpointDamaged] at @s if block ~ ~1 ~7 air run function game:shipweakpoint/respawn
execute as @e[type=slime,tag=!inship,tag=Orange,tag=!WeakpointDamaged] at @s if block ~ ~1 ~-7 air run function game:shipweakpoint/respawn

execute as @e[type=slime,tag=!inship,tag=Purple,tag=!WeakpointDamaged] at @s if block ~1 ~1 ~7 air run function game:shipweakpoint/respawn
execute as @e[type=slime,tag=!inship,tag=Orange,tag=!WeakpointDamaged] at @s if block ~1 ~1 ~-7 air run function game:shipweakpoint/respawn

execute as @e[type=slime,tag=!inship,tag=Purple,tag=!WeakpointDamaged] at @s if block ~-1 ~1 ~7 air run function game:shipweakpoint/respawn
execute as @e[type=slime,tag=!inship,tag=Orange,tag=!WeakpointDamaged] at @s if block ~-1 ~1 ~-7 air run function game:shipweakpoint/respawn

execute as @e[type=slime,tag=!inship,tag=Purple,tag=!WeakpointDamaged] at @s if block ~ ~2 ~7 air run function game:shipweakpoint/respawn
execute as @e[type=slime,tag=!inship,tag=Orange,tag=!WeakpointDamaged] at @s if block ~ ~2 ~-7 air run function game:shipweakpoint/respawn

execute as @e[type=slime,tag=!inship,tag=Purple,tag=!WeakpointDamaged] at @s if block ~ ~ ~7 air run function game:shipweakpoint/respawn
execute as @e[type=slime,tag=!inship,tag=Orange,tag=!WeakpointDamaged] at @s if block ~ ~ ~-7 air run function game:shipweakpoint/respawn

execute as @e[type=slime,tag=!inship,tag=Purple,tag=!WeakpointDamaged] at @s if entity @e[type=marker,tag=ImpactMarker,distance=..7] run function game:shipweakpoint/respawn
execute as @e[type=slime,tag=!inship,tag=Orange,tag=!WeakpointDamaged] at @s if entity @e[type=marker,tag=ImpactMarker,distance=..7] run function game:shipweakpoint/respawn

execute as @e[type=marker,tag=FakePointMarker] at @s run tag @e[type=marker,tag=ImpactMarker,sort=nearest,distance=..7] add HitWeakpointFake
