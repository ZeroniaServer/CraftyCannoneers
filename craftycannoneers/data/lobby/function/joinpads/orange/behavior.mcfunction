#> While open
execute at @s[tag=!Locked] run function lobby:joinpads/orange/open

#> Remove try join tags
tag @a[tag=tryJoinOrange,distance=4.5..] remove tryJoinOrange