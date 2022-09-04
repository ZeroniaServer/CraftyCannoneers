function lobby:customizer/defaults
tag @s add JoinReset
function game:forcestop
schedule function lobby:customizer/updatesigns 1s replace
tag @s remove JoinReset