execute as @e[type=armor_stand,tag=ShipBell,tag=Purple] if entity @a[team=Orange,predicate=game:onpurple] run scoreboard players add @s CmdData 1
execute as @e[type=armor_stand,tag=ShipBell,tag=Orange] if entity @a[team=Purple,predicate=game:onorange] run scoreboard players add @s CmdData 1

scoreboard players add @e[type=armor_stand,tag=ShipBell,scores={CmdData=300}] bellring 1
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=300,bellring=..11}] at @s run data merge entity @s {Pose:{Head:[0f,0f,-3f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=301,bellring=..11}] at @s run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=302,bellring=..11}] at @s run data merge entity @s {Pose:{Head:[0f,0f,3f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=303,bellring=..11}] at @s run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=300,bellring=..11}] at @s run playsound minecraft:shipbell master @a ~ ~ ~ 2 1
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=300,bellring=..11}] at @s run playsound minecraft:shipbell_distant master @a[distance=20..] ~ ~ ~ 6 1

execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=300,bellring=15..}] at @s run scoreboard players set @s bellring 12

execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=300,bellring=12}] at @s run playsound minecraft:shipbell_echo master @a ~ ~ ~ 6 1
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=300,bellring=12..}] at @s run playsound minecraft:shipbell_resonate master @a ~ ~ ~ 5 1
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=300,bellring=12..}] at @s run data merge entity @s {Pose:{Head:[2f,0f,-2f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=305,bellring=12..}] at @s run data merge entity @s {Pose:{Head:[-2f,0f,0f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=310,bellring=12..}] at @s run data merge entity @s {Pose:{Head:[0f,0f,2f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=315,bellring=12..}] at @s run data merge entity @s {Pose:{Head:[2f,0f,0f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=320,bellring=12..}] at @s run data merge entity @s {Pose:{Head:[0f,0f,-2f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=325,bellring=12..}] at @s run data merge entity @s {Pose:{Head:[-2f,0f,0f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=330,bellring=12..}] at @s run data merge entity @s {Pose:{Head:[0f,0f,2f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=335,bellring=12..}] at @s run data merge entity @s {Pose:{Head:[-2f,0f,0f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=340,bellring=12..}] at @s run data merge entity @s {Pose:{Head:[2f,0f,-2f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=345,bellring=12..}] at @s run data merge entity @s {Pose:{Head:[2f,0f,0f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=350,bellring=12..}] at @s run data merge entity @s {Pose:{Head:[-2f,0f,2f]}}
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=355,bellring=12..}] at @s run data merge entity @s {Pose:{Head:[0f,0f,0f]}}

execute as @e[type=armor_stand,tag=Orange,tag=ShipBell,scores={CmdData=300,bellring=12..}] at @s run effect give @a[team=Purple,predicate=game:onorange] glowing 4 100 true
execute as @e[type=armor_stand,tag=Purple,tag=ShipBell,scores={CmdData=300,bellring=12..}] at @s run effect give @a[team=Orange,predicate=game:onpurple] glowing 4 100 true

execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=320..,bellring=..11}] at @s run scoreboard players set @s CmdData 299
execute as @e[type=armor_stand,tag=ShipBell,scores={CmdData=360..,bellring=12..}] at @s run scoreboard players set @s CmdData 299


execute as @e[type=armor_stand,tag=ShipBell,tag=Purple,scores={CmdData=1..}] unless entity @a[team=Orange,predicate=game:onpurple] run scoreboard players remove @s CmdData 1
execute as @e[type=armor_stand,tag=ShipBell,tag=Orange,scores={CmdData=1..}] unless entity @a[team=Purple,predicate=game:onorange] run scoreboard players remove @s CmdData 1
execute as @e[type=armor_stand,tag=ShipBell,tag=Purple,scores={bellring=1..}] unless entity @a[team=Orange,predicate=game:onpurple] run scoreboard players reset @s bellring
execute as @e[type=armor_stand,tag=ShipBell,tag=Orange,scores={bellring=1..}] unless entity @a[team=Purple,predicate=game:onorange] run scoreboard players reset @s bellring


execute as @e[type=armor_stand,tag=ShipBell,tag=Purple,scores={CmdData=300..}] unless entity @a[team=Orange,predicate=game:onpurple] run scoreboard players set @s CmdData 299
execute as @e[type=armor_stand,tag=ShipBell,tag=Orange,scores={CmdData=300..}] unless entity @a[team=Purple,predicate=game:onorange] run scoreboard players set @s CmdData 299