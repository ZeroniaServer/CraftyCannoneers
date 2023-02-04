#> Regular
#Common
execute at @s[tag=CChestFakeC] as @a[team=Lobby,distance=..7] unless score @s ChestTutorial matches 3 run particle falling_dust light_gray_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @s
execute at @s[tag=CChestFakeC] as @a[team=Lobby,distance=7..12] unless score @s ChestTutorial matches 3 run particle falling_dust light_gray_concrete ~ ~1 ~ 0 0 0 0.1 1 normal @s
execute at @s[tag=CChestFakeC] run particle falling_dust light_gray_concrete ~ ~2 ~ 0 0 0 0.1 1 normal @a[team=Lobby,distance=13..]
#Uncommon
execute at @s[tag=UCChestFakeC] as @a[team=Lobby,distance=..7] unless score @s ChestTutorial matches 4 run particle falling_dust light_blue_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @s
execute at @s[tag=UCChestFakeC] as @a[team=Lobby,distance=7..12] unless score @s ChestTutorial matches 4 run particle falling_dust light_blue_concrete ~ ~1 ~ 0 0 0 0.1 1 normal @s
execute at @s[tag=UCChestFakeC] run particle falling_dust light_blue_concrete ~ ~2 ~ 0 0 0 0.1 1 normal @a[team=Lobby,distance=13..]
#Rare
execute at @s[tag=RChestFakeC] as @a[team=Lobby,distance=..7] unless score @s ChestTutorial matches 5 run particle falling_dust purple_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @s
execute at @s[tag=RChestFakeC] as @a[team=Lobby,distance=7..12] unless score @s ChestTutorial matches 5 run particle falling_dust purple_concrete ~ ~1 ~ 0 0 0 0.1 1 normal @s
execute at @s[tag=RChestFakeC] run particle falling_dust purple_concrete ~ ~2 ~ 0 0 0 0.1 1 normal @a[team=Lobby,distance=13..]
#Locked
execute at @s[tag=LChestFakeC] as @a[team=Lobby,distance=..7] unless score @s ChestTutorial matches 6 run particle falling_dust red_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @s
execute at @s[tag=LChestFakeC] as @a[team=Lobby,distance=7..12] unless score @s ChestTutorial matches 6 run particle falling_dust red_concrete ~ ~1 ~ 0 0 0 0.1 1 normal @s
execute at @s[tag=LChestFakeC] run particle falling_dust red_concrete ~ ~2 ~ 0 0 0 0.1 1 normal @a[team=Lobby,distance=13..]

#> Tutorial sequence
#Common
execute at @s[tag=CChestFakeC] run particle falling_dust light_gray_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @a[team=Lobby,scores={ChestTutorial=3}]
execute at @s[tag=CChestFakeC] run particle falling_dust light_gray_concrete ~ ~1 ~ 0 0 0 0.1 1 normal @a[team=Lobby,scores={ChestTutorial=3}]
#Uncommon
execute at @s[tag=UCChestFakeC] run particle falling_dust light_blue_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @a[team=Lobby,scores={ChestTutorial=4}]
execute at @s[tag=UCChestFakeC] run particle falling_dust light_blue_concrete ~ ~1 ~ 0 0 0 0.1 1 normal @a[team=Lobby,scores={ChestTutorial=4}]
#Rare
execute at @s[tag=RChestFakeC] run particle falling_dust purple_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @a[team=Lobby,scores={ChestTutorial=5}]
execute at @s[tag=RChestFakeC] run particle falling_dust purple_concrete ~ ~1 ~ 0 0 0 0.1 1 normal @a[team=Lobby,scores={ChestTutorial=5}]
#Locked
execute at @s[tag=LChestFakeC] run particle falling_dust red_concrete ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @a[team=Lobby,scores={ChestTutorial=6}]
execute at @s[tag=LChestFakeC] run particle falling_dust red_concrete ~ ~1 ~ 0 0 0 0.1 1 normal @a[team=Lobby,scores={ChestTutorial=6}]