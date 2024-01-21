scoreboard players add $StartSplash CmdData 1

execute if score $StartSplash CmdData matches 1..11 as @a at @s run title @a title {"translate":"\uE031 "}
execute if score $StartSplash CmdData matches 1 as @a at @s run playsound minecraft:entity.player.swim master @s ~ ~ ~ 1 0.7
execute if score $StartSplash CmdData matches 1 as @a at @s run playsound minecraft:entity.player.swim master @s ~ ~ ~ 1 0.7
execute if score $StartSplash CmdData matches 1 as @a at @s run playsound minecraft:entity.player.swim master @s ~ ~ ~ 1 0.7
execute if score $StartSplash CmdData matches 1 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.1
execute if score $StartSplash CmdData matches 1 as @a at @s run title @a subtitle {"translate":"game.started","color":"#000000"}
execute if score $StartSplash CmdData matches 2 as @a at @s run title @a subtitle {"translate":"game.started","color":"#021a00"}
execute if score $StartSplash CmdData matches 3 as @a at @s run title @a subtitle {"translate":"game.started","color":"#043300"}
execute if score $StartSplash CmdData matches 4 as @a at @s run title @a subtitle {"translate":"game.started","color":"#064d00"}
execute if score $StartSplash CmdData matches 5 as @a at @s run title @a subtitle {"translate":"game.started","color":"#086600"}
execute if score $StartSplash CmdData matches 6 as @a at @s run title @a subtitle {"translate":"game.started","color":"#0a8000"}
execute if score $StartSplash CmdData matches 7 as @a at @s run title @a subtitle {"translate":"game.started","color":"#0c9900"}
execute if score $StartSplash CmdData matches 8 as @a at @s run title @a subtitle {"translate":"game.started","color":"#0eb300"}
execute if score $StartSplash CmdData matches 9 as @a at @s run title @a subtitle {"translate":"game.started","color":"#10cc00"}
execute if score $StartSplash CmdData matches 10 as @a at @s run title @a subtitle {"translate":"game.started","color":"#12e600"}
execute if score $StartSplash CmdData matches 11 as @a at @s run title @a subtitle {"translate":"game.started","color":"#14ff00"}