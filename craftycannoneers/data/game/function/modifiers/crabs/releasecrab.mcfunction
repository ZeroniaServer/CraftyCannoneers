execute store result score $tempuuid playerUUID run data get entity @s item.components."minecraft:custom_data".owner[0]

$summon cat ~ ~ ~ {variant:"minecraft:calico",Age:-2147483648,Rotation:[$(angle)f, 0.0f],Motion:[0.0d,0.7d,0.0d],CustomName:'{"translate":"mob.crab"}',Tags:["CrabEntity","CrabVehicle","new","justReleased"],active_effects:[{id:"minecraft:instant_health",amplifier:100b,duration:-1,show_particles:0b},{id:"minecraft:water_breathing",amplifier:100b,duration:-1,show_particles:0b},{id:"minecraft:weakness",amplifier:100b,duration:-1,show_particles:0b}],Silent:1b,PersistenceRequired:1b,attributes:[{id:"minecraft:max_health",base:100},{id:"minecraft:attack_damage",base:0}],Passengers:[{id:"minecraft:endermite",Tags:["CrabEntity","CrabController"],Lifetime:-2147483648,PlayerSpawned:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b},{id:"minecraft:instant_health",amplifier:100b,duration:-1,show_particles:0b},{id:"minecraft:water_breathing",amplifier:100b,duration:-1,show_particles:0b},{id:"minecraft:weakness",amplifier:100b,duration:-1,show_particles:0b}],Silent:1b,PersistenceRequired:1b,attributes:[{id:"minecraft:follow_range",base:0},{id:"minecraft:max_health",base:100},{id:"minecraft:attack_damage",base:0}]},{id:"minecraft:item_display",Rotation:[$(angle)f, 0.0f],item_display:"fixed",Tags:["CrabEntity","CrabDisplay"],item:{id:"minecraft:diamond_hoe",components:{"custom_model_data":117},count:1},Passengers:[{id:"minecraft:item_display",Rotation:[$(angle)f, 0.0f],item_display:"ground",Tags:["CrabEntity","CrabItemDisplay"]}]}]}

execute as @e[type=cat,tag=CrabVehicle,tag=new,limit=1] run function game:modifiers/crabs/transferdata

execute as @e[type=cat,tag=CrabVehicle,tag=justReleased,limit=1] on passengers at @s[type=item_display] run function game:modifiers/crabs/forcestealmode