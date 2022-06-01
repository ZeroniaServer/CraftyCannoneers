scoreboard players operation $currentTracer2 playerUUID = @s playerUUID

execute as @a[team=!Lobby,team=!Spectator] if score @s playerUUID = $currentTracer2 playerUUID run tag @s add CurrentTracer2

particle flash ~ ~ ~ 0 0 0 0 10 force @a[tag=CurrentTracer2]
particle dust 0 1 0.3 5 ~ ~ ~ 1 1 1 0 40 force @a[tag=CurrentTracer2]
particle block_marker lime_concrete ~ ~1 ~ 1 0.5 1 0 20 force @a[tag=CurrentTracer2]

give @a[tag=CurrentTracer2] diamond_hoe{HideFlags:127,NoDrop:1b,Unbreakable:1b,CustomModelData:60,Cannonball:8b,display:{Name:'[{"text":"Tracer Cannonball","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Using this Cannonball does not","italic":false,"color":"white"}]','[{"text":"consume any Gunpowder in a Cannon.","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Leaves behind a visible trail","italic":false,"color":"#66ff99"}]','[{"text":"which is only apparent to its user.","italic":false,"color":"#66ff99"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]']}}

kill @s

tag @a remove CurrentTracer2
scoreboard players reset $currentTracer2 playerUUID