tp @s ~ ~ ~ facing entity @a[team=!Lobby,team=!Spectator,limit=1,sort=nearest,distance=..20]
tp @s[predicate=game:onorange] ~ ~ ~ facing entity @a[team=Orange,limit=1,sort=nearest,distance=..20]
tp @s[predicate=game:onpurple] ~ ~ ~ facing entity @a[team=Purple,limit=1,sort=nearest,distance=..20]
execute at @s run tp @s ~ ~ ~ ~ 0