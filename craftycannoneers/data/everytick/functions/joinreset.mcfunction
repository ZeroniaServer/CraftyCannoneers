function lobby:customizer/defaults
tag @s add JoinReset
function game:forcestop
fill -53 -22 9 -55 -24 9 air replace crimson_wall_sign
schedule function lobby:customizer/modifiers/off 10t replace
schedule function lobby:customizer/open 10t replace
schedule function lobby:customizer/updatesigns 1s replace
tag @s remove JoinReset