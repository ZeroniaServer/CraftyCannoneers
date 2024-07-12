#> While open
execute at @s[tag=!Locked] run function lobby:joinpads/purple/open

#> Remove try join tags
tag @a[team=Lobby,tag=tryJoinPurple,distance=4.5..] remove tryJoinPurple