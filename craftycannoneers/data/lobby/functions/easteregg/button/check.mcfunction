scoreboard players add @s button 1
tellraw @s [{"score":{"name":"@s","objective":"button"},"color":"white"},{"text":"/","color":"gray"},{"text":"10","color":"white"}]
execute if score @s button matches 10 run function lobby:easteregg/button/reward