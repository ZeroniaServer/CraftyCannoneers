execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] at @s run clear @s

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run function lobby:hats

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] at @s run item replace entity @s hotbar.4 with spyglass{NoDrop:1b,display:{Name:'[{"text":"Spotting Spyglass","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Use this Spyglass to expose","italic":false,"color":"aqua"}]','[{"text":"the weakpoints of a ship!","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]']}}

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] at @s run playsound ding master @a ~ ~ ~ 1 0.6
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run title @s title {"text":"Watchtower","color":"aqua"}
execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run title @s subtitle {"text":"(Learn about spotting Weakpoints)","color":"yellow"}

execute as @a[gamemode=!spectator,predicate=tutorial:watchtower,tag=!InTower] run tag @s add InTower

execute as @a[predicate=!tutorial:watchtower,tag=InTower] run title @s title {"text":" "}
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run title @s subtitle {"text":" "}
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run clear @s
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run function lobby:items
execute as @a[predicate=!tutorial:watchtower,tag=InTower] run tag @s remove InTower

function tutorial:xparticle

tag @a[team=Lobby] remove UsingSpyglass