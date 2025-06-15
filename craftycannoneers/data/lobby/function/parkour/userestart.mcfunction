advancement revoke @s only lobby:restart_parkour
advancement revoke @s only lobby:restart_parkour_cooldown

execute if score @s impulse_cooldown matches 1.. run return run scoreboard players set @s impulse_cooldown 2

function lobby:parkour/restart
scoreboard players set @s impulse_cooldown 2