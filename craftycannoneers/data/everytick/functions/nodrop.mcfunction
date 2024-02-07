#> Immediately give back item, where possible
setblock 0 300 0 yellow_shulker_box
item replace block 0 300 0 container.0 with stone
data modify block 0 300 0 Items[0] merge from entity @s Item
execute on origin run loot give @s mine 0 300 0 air{drop_contents:1b}
setblock 0 300 0 air

#> Check for default items and full inventory before killing
function everytick:defaultitemcheck
execute if entity @s[tag=Cutlass] on origin run tag @s[team=!Spectator,gamemode=!spectator,tag=fullInv] add NeedsCutlass
execute if entity @s[tag=Crossbow] on origin run tag @s[team=!Spectator,gamemode=!spectator,tag=fullInv] add NeedsCrossbow
execute if entity @s[tag=Spyglass] on origin run tag @s[team=!Spectator,gamemode=!spectator,tag=fullInv] add NeedsSpyglass
execute if entity @s[tag=Tracer] on origin run tag @s[team=!Spectator,gamemode=!spectator,tag=fullInv] add NeedsTracer

kill @s