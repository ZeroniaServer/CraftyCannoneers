tag @s add raycaster
scoreboard players set #hit raycast 0
scoreboard players set #distance raycast 0
execute if score $cannoncast CmdData matches 1 run function game:raycast/ray_cannon
execute unless score $cannoncast CmdData matches 1 run function game:raycast/ray
tag @s remove raycaster