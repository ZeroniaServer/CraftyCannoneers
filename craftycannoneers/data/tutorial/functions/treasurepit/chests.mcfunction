#> Rise
scoreboard players add @s CmdData 0
execute at @s[scores={CmdData=..9}] run function tutorial:treasurepit/rise

#> Particles
execute if entity @s[tag=!Looted,scores={CmdData=31..}] run function tutorial:treasurepit/particles

#> Once opened
execute on passengers if entity @s[tag=Opened,tag=!Looted] run function tutorial:treasurepit/opened

#> Spawn locked chest
execute at @s[tag=LChestFakeC,tag=Unlocked,tag=!Spawned] run function tutorial:treasurepit/unlockedlock

#> Locked Chest notifications
execute at @s[tag=LChestFakeC] on passengers if entity @s[type=interaction,tag=LChestFake] run function tutorial:treasurepit/lockedchestnotif

#> Despawn looted fakes
execute at @s[tag=Looted] run function tutorial:treasurepit/despawn