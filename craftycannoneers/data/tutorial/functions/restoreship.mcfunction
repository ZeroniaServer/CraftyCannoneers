scoreboard players set $shipstatus CmdData 0
scoreboard players set $shiptimer CmdData 0
kill @e[type=marker,tag=ShipRestore]
summon marker -1385 -36 -21 {Tags:["ShipRestore"],PersistenceRequired:1b}
execute as @e[type=#game:weakpoint,tag=WeakpointDamaged,tag=FakeWeakpoint] store result score @s eyeclick run data get entity @s Pos[1]

title @a[tag=OnDock] actionbar {"text":"Training Ship repaired!","color":"green"}