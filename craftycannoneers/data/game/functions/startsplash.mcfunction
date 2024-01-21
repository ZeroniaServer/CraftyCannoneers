scoreboard players add $StartSplash CmdData 1

execute if score $StartSplash CmdData matches 1..11 as @a at @s run title @a title {"translate":"\uE031 "}
execute if score $StartSplash CmdData matches 1 as @a at @s run playsound minecraft:entity.player.swim master @s ~ ~ ~ 1 0.7
execute if score $StartSplash CmdData matches 1 as @a at @s run playsound minecraft:entity.player.swim master @s ~ ~ ~ 1 0.7
execute if score $StartSplash CmdData matches 1 as @a at @s run playsound minecraft:entity.player.swim master @s ~ ~ ~ 1 0.7
execute if score $StartSplash CmdData matches 1 as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1.1
execute if score $StartSplash CmdData matches 1 as @a at @s run title @a subtitle {"translate":"game.started","color":"#000000"}
execute if score $StartSplash CmdData matches 2 as @a at @s run title @a subtitle {"translate":"game.started","color":"#00181a"}
execute if score $StartSplash CmdData matches 3 as @a at @s run title @a subtitle {"translate":"game.started","color":"#003033"}
execute if score $StartSplash CmdData matches 4 as @a at @s run title @a subtitle {"translate":"game.started","color":"#00484d"}
execute if score $StartSplash CmdData matches 5 as @a at @s run title @a subtitle {"translate":"game.started","color":"#006066"}
execute if score $StartSplash CmdData matches 6 as @a at @s run title @a subtitle {"translate":"game.started","color":"#007880"}
execute if score $StartSplash CmdData matches 7 as @a at @s run title @a subtitle {"translate":"game.started","color":"#009099"}
execute if score $StartSplash CmdData matches 8 as @a at @s run title @a subtitle {"translate":"game.started","color":"#00a8b3"}
execute if score $StartSplash CmdData matches 9 as @a at @s run title @a subtitle {"translate":"game.started","color":"#00c0cc"}
execute if score $StartSplash CmdData matches 10 as @a at @s run title @a subtitle {"translate":"game.started","color":"#00d8e6"}
execute if score $StartSplash CmdData matches 11 as @a at @s run title @a subtitle {"translate":"game.started","color":"#00f0ff"}