execute unless entity @s[tag=outside] run scoreboard players operation $currentpcb playerUUID = @s playerUUID
execute unless entity @s[tag=outside] as @a if score @s playerUUID = $currentpcb playerUUID run tag @s add PlayerCannon
execute unless entity @a[tag=PlayerCannon,limit=1] run scoreboard players reset @s playerUUID
execute unless entity @s[tag=outside] run advancement grant @a[tag=PlayerCannon,limit=1] only tutorial:zzzunlockables/playercannonball

execute unless entity @s[tag=outside] as @a[tag=PlayerCannon,gamemode=!spectator,limit=1] run ride @s dismount
execute unless entity @s[tag=outside] run tag @a[tag=PlayerCannon,gamemode=creative,limit=1] add cr
execute unless entity @s[tag=outside] as @a[tag=PlayerCannon,gamemode=!spectator,limit=1] run gamemode spectator @s
execute unless entity @s[tag=outside] on passengers on passengers on passengers run spectate @s @a[tag=PlayerCannon,limit=1]
execute unless entity @s[tag=outside] run tag @a[tag=PlayerCannon,limit=1] add InPlayerCB

execute if entity @s[scores={CmdData=3..}] run function cannons:showplayercannonball

tag @a[tag=PlayerCannon,limit=1] remove PlayerCannon