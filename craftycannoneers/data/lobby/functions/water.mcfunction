particle splash ~ ~ ~ 0.3 0 0.3 0.3 150 force @a[team=Lobby]
particle falling_water ~ ~ ~ 0.2 0.4 0.1 0.2 150 force @a[team=Lobby]
particle bubble_column_up ~ ~ ~ 0.4 0.2 0.4 0.1 20 force @a[team=Lobby]
playsound entity.player.splash.high_speed master @a[distance=1..] ~ ~ ~ 1 0
playsound entity.player.splash.high_speed master @a[distance=1..] ~ ~ ~ 1 1.4
playsound block.bubble_column.whirlpool_ambient master @a[distance=1..] ~ ~ ~ 1 1.2
tag @s add LeaveGame