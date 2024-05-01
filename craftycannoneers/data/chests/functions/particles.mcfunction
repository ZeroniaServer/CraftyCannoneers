#Common
execute at @s[tag=CChestAS] run particle falling_dust{block_state:"light_gray_concrete"} ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..7]
execute at @s[tag=CChestAS] run particle falling_dust{block_state:"light_gray_concrete"} ~ ~1 ~ 0 0 0 0.1 1 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=7..12]
execute at @s[tag=CChestAS] run particle falling_dust{block_state:"light_gray_concrete"} ~ ~2 ~ 0 0 0 0.1 1 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=13..]
#Uncommon
execute at @s[tag=UCChestAS] run particle falling_dust{block_state:"light_blue_concrete"} ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..7]
execute at @s[tag=UCChestAS] run particle falling_dust{block_state:"light_blue_concrete"} ~ ~1 ~ 0 0 0 0.1 1 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=7..12]
execute at @s[tag=UCChestAS] run particle falling_dust{block_state:"light_blue_concrete"} ~ ~2 ~ 0 0 0 0.1 1 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=13..]
#Rare
execute at @s[tag=RChestAS] run particle falling_dust{block_state:"purple_concrete"} ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..7]
execute at @s[tag=RChestAS] run particle falling_dust{block_state:"purple_concrete"} ~ ~1 ~ 0 0 0 0.1 1 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=7..12]
execute at @s[tag=RChestAS] run particle falling_dust{block_state:"purple_concrete"} ~ ~2 ~ 0 0 0 0.1 1 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=13..]
#Locked
execute at @s[tag=LChestAS] run particle falling_dust{block_state:"red_concrete"} ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..7]
execute at @s[tag=LChestAS] run particle falling_dust{block_state:"red_concrete"} ~ ~1 ~ 0 0 0 0.1 1 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=7..12]
execute at @s[tag=LChestAS] run particle falling_dust{block_state:"red_concrete"} ~ ~2 ~ 0 0 0 0.1 1 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=13..]
#Grave
execute at @s[tag=grave] run particle falling_dust{block_state:"sculk"} ~ ~0.1 ~ 0.2 0 0.2 0.1 2 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=..7]
execute at @s[tag=grave] run particle falling_dust{block_state:"sculk"} ~ ~1 ~ 0 0 0 0.1 1 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=7..12]
execute at @s[tag=grave] run particle falling_dust{block_state:"sculk"} ~ ~2 ~ 0 0 0 0.1 1 normal @a[team=!Lobby,team=!Spectator,team=!Developer,distance=13..]