#> Rise
scoreboard players add @s CmdData 0
execute at @s[scores={CmdData=..9}] run function tutorial:treasurepit/rise

#> Particles
execute if entity @s[type=armor_stand,tag=!Looted,scores={CmdData=31..}] run function tutorial:treasurepit/particles

#> Once opened
execute at @s[type=hopper_minecart,tag=fakechest,tag=Opened,tag=!Looted] run function tutorial:treasurepit/opened
execute at @s[type=chest_minecart,tag=fakelockedchest,tag=Opened,tag=!Looted] run function tutorial:treasurepit/opened

#> Spawn locked chest
execute at @s[type=armor_stand,tag=LChestFakeC,tag=Unlocked,tag=!Spawned] run function tutorial:treasurepit/spawnlocked

#> Once unlocked
execute at @s[type=chest_minecart,tag=fakelockedchest] at @s run tp @s @e[type=armor_stand,tag=LChestFakeC,tag=Unlocked,tag=Spawned,limit=1,sort=nearest,distance=..2]

#> Despawn looted fakes
execute at @s[tag=Looted] run function tutorial:treasurepit/despawn