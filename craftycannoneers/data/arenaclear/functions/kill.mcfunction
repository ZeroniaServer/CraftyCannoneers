ride @s dismount
item replace entity @s armor.head with air
tp 0 1000 0
data modify entity @s[type=slime] Size set value 0b
data remove entity @s[type=chest_minecart] Items
data remove entity @s[type=hopper_minecart] Items
execute if entity @s[tag=markkill] run scoreboard players remove $markkill CmdData 1
kill