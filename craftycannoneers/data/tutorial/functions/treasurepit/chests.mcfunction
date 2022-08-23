#> Rise
scoreboard players add @s CmdData 0
execute at @s[scores={CmdData=..9}] run function tutorial:treasurepit/rise

#> Particles
execute at @s[type=armor_stand,tag=!Looted,scores={CmdData=31..}] run function tutorial:treasurepit/particles

#> Open
execute at @s[type=hopper_minecart,tag=fakechest,tag=!Opened] if data entity @s Items run function tutorial:treasurepit/open
execute at @s[type=chest_minecart,tag=fakelockedchest,tag=!Opened] if data entity @s Items run function tutorial:treasurepit/open

#> While opened
execute at @s[type=hopper_minecart,tag=fakechest,tag=Opened] run function tutorial:treasurepit/opened
execute at @s[type=chest_minecart,tag=fakelockedchest,tag=Opened] run function tutorial:treasurepit/opened

#> Spawn locked chest
execute at @s[type=armor_stand,tag=LChestFakeC,tag=Unlocked,tag=!Spawned] run function tutorial:treasurepit/spawnlocked

#> While unlocked
execute at @s[type=chest_minecart,tag=fakelockedchest] at @s run tp @s @e[type=armor_stand,tag=LChestFakeC,tag=Unlocked,tag=Spawned,limit=1,sort=nearest,distance=..2]

#> Despawn looted fakes
execute at @s[tag=Looted] run function tutorial:treasurepit/despawn