execute unless block -43 -22 -14 minecraft:potted_fern run setblock -43 -22 -14 minecraft:potted_fern
execute unless block -54 -23 4 minecraft:potted_fern run setblock -54 -23 4 minecraft:potted_fern
execute unless block -238 -26 -27 minecraft:potted_fern run setblock -238 -26 -27 minecraft:potted_fern
execute unless block -244 -27 -15 minecraft:potted_fern run setblock -244 -27 -15 minecraft:potted_fern
execute unless block -245 -26 -15 minecraft:potted_blue_orchid run setblock -245 -26 -15 minecraft:potted_blue_orchid

#inventory 25 gets replaced for no reason, but somehow that fixes an issue with ghost items. Could've used any other non-hotbar slot. Idek.
item replace entity @s inventory.25 with air
clear @s fern
clear @s blue_orchid

advancement revoke @s only lobby:clickpot