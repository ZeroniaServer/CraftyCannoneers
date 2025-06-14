#> Fire Cannonball
#Normal Cannonball
$execute if score @s CannonID matches 1 run summon armor_stand ~ ~ ~ {Tags:["cannonball","Cannonball","NewCannonball","boatlaunch"],Rotation:[$(angle)f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Hot Cannonball
$execute if score @s CannonID matches 2 run summon armor_stand ~ ~ ~ {Tags:["cannonball","HotCannonball","NewCannonball","boatlaunch"],Rotation:[$(angle)f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Cannonball Cluster
$execute if score @s CannonID matches 3 run summon armor_stand ~ ~ ~ {Tags:["cannonball","CannonballCluster","0","NewCannonball","boatlaunch"],Rotation:[$(angle)f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
$execute if score @s CannonID matches 3 run summon armor_stand ~ ~ ~ {Tags:["cannonball","CannonballCluster","1","HLeft","Hit1","CSpread","NewCannonball","boatlaunch"],Rotation:[$(angle)f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
$execute if score @s CannonID matches 3 run summon armor_stand ~ ~ ~ {Tags:["cannonball","CannonballCluster","2","HLeft","Hit1","CSpread","NewCannonball","boatlaunch"],Rotation:[$(angle)f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
$execute if score @s CannonID matches 3 run summon armor_stand ~ ~ ~ {Tags:["cannonball","CannonballCluster","3","Hit1","HRight","CSpread","NewCannonball","boatlaunch"],Rotation:[$(angle)f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
$execute if score @s CannonID matches 3 run summon armor_stand ~ ~ ~ {Tags:["cannonball","CannonballCluster","4","Hit1","HRight","CSpread","NewCannonball","boatlaunch"],Rotation:[$(angle)f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Gas Cannonball
$execute if score @s CannonID matches 4 run summon armor_stand ~ ~ ~ {Tags:["cannonball","GasCannonball","Hit1","NewCannonball","boatlaunch"],Rotation:[$(angle)f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Chain Cannonball
$execute if score @s CannonID matches 5 run summon armor_stand ~ ~ ~ {Tags:["cannonball","ChainCannonball","NewCannonball","boatlaunch"],Rotation:[$(angle)f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Bouncy Cannonball
$execute if score @s CannonID matches 6 run summon armor_stand ~ ~ ~ {Tags:["cannonball","BouncyCannonball","NewCannonball","boatlaunch"],Rotation:[$(angle)f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Player Cannonball
$execute if score @s CannonID matches 7 run summon armor_stand ~ ~1 ~ {Tags:["cannonball","PlayerCannonball","NewCannonball","boatlaunch"],Rotation:[$(angle)f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:item_display",Tags:["PCannonballhat","New"],Rotation:[$(angle)f,0.0f],item_display:"head",width:1.0f,height:1.0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.4875f,0.4875f,0.4875f],translation:[0.0f,0.9575f,-0.01f]}},{id:"minecraft:item_display",Tags:["PCannonballdeco","New"],Rotation:[$(angle)f,0.0f],transformation:{scale:[0.8,0.8,0.8],translation:[0.0,1.1,0.0],left_rotation:[0,0,0,1],right_rotation:[0,0,0,1]},Passengers:[{id:"minecraft:slime",Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:1b,show_particles:0b}],DeathTime:17s,DeathLootTable:"minecraft:empty",Invulnerable:1b,NoAI:1b,Size:1,Rotation:[$(angle)f,0.0f],Tags:["PCannonballname"]},{id:"minecraft:cow",Age:0,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:1b,show_particles:0b}],DeathTime:17s,DeathLootTable:"minecraft:empty",Invulnerable:1b,NoAI:1b,Rotation:[$(angle)f,0.0f],Tags:["PCannonballname"]},{id:"minecraft:camel",Age:-2147483648,Silent:1b,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:1b,show_particles:0b}],DeathTime:17s,DeathLootTable:"minecraft:empty",Invulnerable:1b,NoAI:1b,Rotation:[$(angle)f,0.0f],Tags:["PCannonballSpecAnchor"],Passengers:[{id:"minecraft:item_display",Tags:["PCannonballSpec"],Rotation:[$(angle)f,0.0f]}]}]}]}

#Tracer Cannonball
$execute if score @s CannonID matches 8 run summon armor_stand ~ ~ ~ {Tags:["cannonball","TracerCannonball","NewCannonball","boatlaunch"],Rotation:[$(angle)f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Golden Cannonball
$execute if score @s CannonID matches 9 run summon armor_stand ~ ~ ~ {Tags:["cannonball","GoldenCannonball","NewCannonball","boatlaunch"],Rotation:[$(angle)f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Copper Cannonball
$execute if score @s CannonID matches 10 run summon armor_stand ~ ~ ~ {Tags:["cannonball","CopperCannonball","NewCannonball","Hit1","boatlaunch"],Rotation:[$(angle)f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}