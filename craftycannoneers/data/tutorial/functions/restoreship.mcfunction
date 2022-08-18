kill @e[type=marker,tag=ShipRestore]
summon marker -1385 -36 -21 {Tags:["ShipRestore"],PersistenceRequired:1b}
execute as @e[type=#game:weakpoint,tag=WeakpointDamaged,tag=FakeWeakpoint] store result score @s eyeclick run data get entity @s Pos[1]