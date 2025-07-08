function lobby:customizer/defaults
time set day
tag @s add JoinReset
function game:forcestop
tag @s remove JoinReset
scoreboard players set $openmap CmdData 1