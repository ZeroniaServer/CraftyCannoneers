kill @e[type=endermite,tag=CrabEntity]
kill @e[type=item_display,tag=CrabEntity]
summon endermite 70 -27 0 {Tags:["CrabEntity","CrabVehicle"],Invulnerable:1b,Lifetime:-1000000,PlayerSpawned:1b,Passengers:[{id:"minecraft:endermite",Tags:["CrabEntity","CrabController"],Invulnerable:1b,Lifetime:-1000000,PlayerSpawned:1b,Attributes:[{Name:generic.follow_range,Base:0}]},{id:"minecraft:item_display",item_display:"fixed",Tags:["CrabEntity","CrabDisplay"],item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:117},Count:1b}}]}