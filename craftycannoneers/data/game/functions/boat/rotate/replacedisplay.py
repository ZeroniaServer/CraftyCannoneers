for i in range(-90,90):
    g = open("craftycannoneers\\data\\game\\functions\\boat\\rotate\\replacedisplay\\%d.mcfunction" % i,"w+")
    g.write("#> Replace Cannon Display\n")
    g.write("summon husk ~ ~0.375 ~ {Silent:1b,DeathTime:17s,DeathLootTable:\"minecraft:empty\",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,IsBaby:1b,Attributes:[{Name:\"generic.follow_range\",Base:0},{Name:\"generic.attack_damage\",Base:0}],Rotation:[%d.0f,0.0f],Team:\"NoName\",Tags:[\"BoatCannonDisplay\",\"BoatCannonEntity\",\"new\"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b},{Id:7,Amplifier:10b,Duration:-1,ShowParticles:0b}]}\n" % (i*2))
    g.write("ride @e[type=husk,tag=BoatCannonDisplay,tag=new,limit=1] mount @s\n")
    g.write("execute on passengers run tag @s[type=husk] remove new\n")
    g.write("execute on vehicle on vehicle on vehicle on vehicle run function game:boat/cannon/updategunpowder\n")
    g.write("execute on passengers run kill @s[type=item_display,tag=BoatCannonDisplay]\n")