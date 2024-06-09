execute store result score $curr CmdData run time query gametime
execute as @e[type=item_display,tag=EasterEgg] if score @s CmdData = $curr CmdData run function lobby:easteregg/unsquish