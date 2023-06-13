#> Fire Cannonball
#Normal Cannonball
execute if score @s CannonID matches 1 run summon armor_stand ~ ~ ~ {Tags:["cannonball","Cannonball","NewCannonball","boatlaunch"],Rotation:[-160.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Hot Cannonball
execute if score @s CannonID matches 2 run summon armor_stand ~ ~ ~ {Tags:["cannonball","HotCannonball","NewCannonball","boatlaunch"],Rotation:[-160.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Cannonball Cluster
execute if score @s CannonID matches 3 run summon armor_stand ~ ~ ~ {Tags:["cannonball","CannonballCluster","0","NewCannonball","boatlaunch"],Rotation:[-160.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute if score @s CannonID matches 3 run summon armor_stand ~ ~ ~ {Tags:["cannonball","CannonballCluster","1","HLeft","Hit1","CSpread","NewCannonball","boatlaunch"],Rotation:[-160.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute if score @s CannonID matches 3 run summon armor_stand ~ ~ ~ {Tags:["cannonball","CannonballCluster","2","HLeft","Hit1","CSpread","NewCannonball","boatlaunch"],Rotation:[-160.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute if score @s CannonID matches 3 run summon armor_stand ~ ~ ~ {Tags:["cannonball","CannonballCluster","3","Hit1","HRight","CSpread","NewCannonball","boatlaunch"],Rotation:[-160.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}
execute if score @s CannonID matches 3 run summon armor_stand ~ ~ ~ {Tags:["cannonball","CannonballCluster","4","Hit1","HRight","CSpread","NewCannonball","boatlaunch"],Rotation:[-160.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Gas Cannonball
execute if score @s CannonID matches 4 run summon armor_stand ~ ~ ~ {Tags:["cannonball","GasCannonball","Hit1","NewCannonball","boatlaunch"],Rotation:[-160.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Chain Cannonball
execute if score @s CannonID matches 5 run summon armor_stand ~ ~ ~ {Tags:["cannonball","ChainCannonball","NewCannonball","boatlaunch"],Rotation:[-160.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Small:1b,Tags:["ChainAnchor"]}]}

#Bouncy Cannonball
execute if score @s CannonID matches 6 run summon armor_stand ~ ~ ~ {Tags:["cannonball","BouncyCannonball","NewCannonball","boatlaunch"],Rotation:[-160.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Player Cannonball
execute if score @s CannonID matches 7 run summon armor_stand ~ ~ ~ {Tags:["cannonball","PlayerCannonball","NewCannonball","boatlaunch"],Rotation:[-160.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:armor_stand",Tags:["PCannonballdeco","New"],Rotation:[-160.0f,0.0f],Marker:1b,Invulnerable:1b,DisabledSlots:4144959,Small:1b,NoGravity:1b,Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,NoAI:1b,Size:1,Rotation:[-160.0f,0.0f],Tags:["PCannonballname","New"]}]}]}

#Tracer Cannonball
execute if score @s CannonID matches 8 run summon armor_stand ~ ~ ~ {Tags:["cannonball","TracerCannonball","NewCannonball","boatlaunch"],Rotation:[-160.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Golden Cannonball
execute if score @s CannonID matches 9 run summon armor_stand ~ ~ ~ {Tags:["cannonball","GoldenCannonball","NewCannonball","boatlaunch"],Rotation:[-160.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}

#Copper Cannonball
execute if score @s CannonID matches 10 run summon armor_stand ~ ~ ~ {Tags:["cannonball","CopperCannonball","NewCannonball","Hit1","boatlaunch"],Rotation:[-160.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}