scoreboard players operation $currentpcb playerUUID = @s playerUUID
execute as @a if score @s playerUUID = $currentpcb playerUUID run tag @s add PlayerCannon
execute unless entity @a[tag=PlayerCannon,limit=1] run scoreboard players reset @s playerUUID
advancement grant @a[tag=PlayerCannon,limit=1] only tutorial:zzzunlockables/playercannonball

execute as @a[tag=PlayerCannon,gamemode=!spectator,limit=1] run ride @s dismount
execute as @a[tag=PlayerCannon,gamemode=!spectator,limit=1] run gamemode spectator @s
spectate @s @a[tag=PlayerCannon,limit=1]
tag @a[tag=PlayerCannon,limit=1] add InPlayerCB

execute if entity @s[scores={CmdData=3..}] run function cannons:showplayercannonball

tag @a[tag=PlayerCannon,limit=1] remove PlayerCannon