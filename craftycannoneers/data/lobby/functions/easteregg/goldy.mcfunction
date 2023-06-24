advancement grant @s only tutorial:eastereggs/goldy
playsound goldy master @s ~ ~ ~ 1 0.9
execute as @e[type=item_display,tag=Goldy,limit=1] run function lobby:easteregg/squish
scoreboard players set $goldypet CmdData 1