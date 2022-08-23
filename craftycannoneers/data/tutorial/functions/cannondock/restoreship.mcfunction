scoreboard players set $shipstatus CmdData 0
scoreboard players set $shiptimer CmdData 0
kill @e[type=marker,tag=ShipRestore]
summon marker -1385 -36 -21 {Tags:["ShipRestore"],PersistenceRequired:1b}

title @a[tag=OnDock] actionbar {"text":"Training Ship repaired!","color":"green"}