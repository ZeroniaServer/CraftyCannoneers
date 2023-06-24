for i in range(-90,90):
    g = open("craftycannoneers\\data\\game\\functions\\boat\\rotate\\action\\%d.mcfunction" % i,"w+")
    g.write("execute if entity @s[type=boat,tag=Replace] run function game:boat/rotate/placeboat/%d\n" % i)
    g.write("execute if entity @s[type=marker,tag=respawnboat] run function game:boat/rotate/placeboat/%d\n" % i)
    g.write("execute if entity @s[type=boat,tag=Shoot] run function game:boat/rotate/firecannonball/%d" % i)