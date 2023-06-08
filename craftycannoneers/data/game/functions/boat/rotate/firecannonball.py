for i in range(-180,180):
    g = open("craftycannoneers\\data\\game\\functions\\boat\\rotate\\firecannonball\\%d.mcfunction" % i,"w+")
    g.write("#> Fire Cannonball\n")
    g.write("#Normal Cannonball\n")
    g.write("execute if score @s CannonID matches 1 run summon armor_stand ^ ^1 ^1 {Tags:[\"cannonball\",\"Cannonball\",\"NewCannonball\"],Rotation:[%d.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}\n\n" % i)
    
    g.write("#Hot Cannonball\n")
    g.write("execute if score @s CannonID matches 2 run summon armor_stand ^ ^1 ^1 {Tags:[\"cannonball\",\"HotCannonball\",\"NewCannonball\"],Rotation:[%d.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}\n\n" % i)

    g.write("#Cannonball Cluster\n")
    g.write("execute if score @s CannonID matches 3 run summon armor_stand ^ ^1 ^1 {Tags:[\"cannonball\",\"CannonballCluster\",\"0\",\"NewCannonball\"],Rotation:[%d.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}\n" % i)
    g.write("execute if score @s CannonID matches 3 run summon armor_stand ^ ^1 ^1 {Tags:[\"cannonball\",\"CannonballCluster\",\"1\",\"HLeft\",\"Hit1\",\"CSpread\",\"NewCannonball\"],Rotation:[%d.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}\n" % i)
    g.write("execute if score @s CannonID matches 3 run summon armor_stand ^ ^1 ^1 {Tags:[\"cannonball\",\"CannonballCluster\",\"2\",\"HLeft\",\"Hit1\",\"CSpread\",\"NewCannonball\"],Rotation:[%d.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}\n" % i)
    g.write("execute if score @s CannonID matches 3 run summon armor_stand ^ ^1 ^1 {Tags:[\"cannonball\",\"CannonballCluster\",\"3\",\"Hit1\",\"HRight\",\"CSpread\",\"NewCannonball\"],Rotation:[%d.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}\n" % i)
    g.write("execute if score @s CannonID matches 3 run summon armor_stand ^ ^1 ^1 {Tags:[\"cannonball\",\"CannonballCluster\",\"4\",\"Hit1\",\"HRight\",\"CSpread\",\"NewCannonball\"],Rotation:[%d.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}\n\n" % i)

    g.write("#Gas Cannonball\n")
    g.write("execute if score @s CannonID matches 4 run summon armor_stand ^ ^1 ^1 {Tags:[\"cannonball\",\"GasCannonball\",\"Hit1\",\"NewCannonball\"],Rotation:[%d.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}\n\n" % i)

    g.write("#Chain Cannonball\n")
    g.write("execute if score @s CannonID matches 5 run summon armor_stand ^ ^1 ^1 {Tags:[\"cannonball\",\"ChainCannonball\",\"NewCannonball\"],Rotation:[%d.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Passengers:[{id:\"minecraft:armor_stand\",Invisible:1b,Marker:1b,Small:1b,Tags:[\"ChainAnchor\"]}]}\n\n" % i)

    g.write("#Bouncy Cannonball\n")
    g.write("execute if score @s CannonID matches 6 run summon armor_stand ^ ^1 ^1 {Tags:[\"cannonball\",\"BouncyCannonball\",\"NewCannonball\"],Rotation:[%d.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}\n\n" % i)

    g.write("#Player Cannonball\n")
    g.write("execute if score @s CannonID matches 7 run summon armor_stand ^ ^1 ^1 {Tags:[\"cannonball\",\"PlayerCannonball\",\"NewCannonball\"],Rotation:[%d.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,Passengers:[{id:\"minecraft:armor_stand\",Tags:[\"PCannonballdeco\",\"New\"],Rotation:[%d.0f,0.0f],Marker:1b,Invulnerable:1b,DisabledSlots:4144959,Small:1b,NoGravity:1b,Passengers:[{id:\"minecraft:slime\",Silent:1b,Invulnerable:1b,NoAI:1b,Size:1,Rotation:[%d.0f,0.0f],Tags:[\"PCannonballname\",\"New\"]}]}]}\n\n" % (i, i, i))

    g.write("#Tracer Cannonball\n")
    g.write("execute if score @s CannonID matches 8 run summon armor_stand ^ ^1 ^1 {Tags:[\"cannonball\",\"TracerCannonball\",\"NewCannonball\"],Rotation:[%d.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}\n\n" % i)

    g.write("#Golden Cannonball\n")
    g.write("execute if score @s CannonID matches 9 run summon armor_stand ^ ^1 ^1 {Tags:[\"cannonball\",\"GoldenCannonball\",\"NewCannonball\"],Rotation:[%d.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}\n\n" % i)

    g.write("#Copper Cannonball\n")
    g.write("execute if score @s CannonID matches 10 run summon armor_stand ^ ^1 ^1 {Tags:[\"cannonball\",\"CopperCannonball\",\"NewCannonball\",\"Hit1\"],Rotation:[%d.0f,0.0f],Small:1b,Silent:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959}" % i)