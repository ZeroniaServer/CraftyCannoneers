for i in range(-180,180):
    g = open("craftycannoneers\\data\\game\\functions\\boat\\rotate\\action\\%d.mcfunction" % i,"w+")
    g.write("execute if entity @s[type=boat,tag=DismountCheck,tag=!Sinking] run function game:boat/rotate/placeboat/%d\n" % i)
    g.write("execute if entity @s[type=marker,tag=respawnboat] run function game:boat/rotate/placeboat/%d\n" % i)
    g.write("execute if entity @s[type=villager,tag=BoatCannon] run function game:boat/rotate/replacedisplay/%d\n" % i)
    g.write("execute if entity @s[type=boat,tag=FireCannon] run function game:boat/rotate/firecannonball/%d\n" % i)