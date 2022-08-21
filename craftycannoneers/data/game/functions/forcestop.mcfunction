function lobby:customizer/open
scoreboard players set @e[type=marker,tag=joinpad] CmdData 0
tag @a[team=!Lobby,team=!Spectator,team=!Developer,advancements={tutorial:objectives/combat=false}] add NeedsTutorial
tag @a[team=!Lobby,team=!Spectator,team=!Developer,advancements={tutorial:objectives/cannon=false}] add NeedsTutorial
tag @a[team=!Lobby,team=!Spectator,team=!Developer,advancements={tutorial:objectives/treasure=false}] add NeedsTutorial
tag @a[team=!Lobby,team=!Spectator,team=!Developer,advancements={tutorial:objectives/watchtower=false}] add NeedsTutorial
execute unless score $TimeLimit CmdData matches 42069.. run title @a[tag=!inParkour] actionbar [""]
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=NeedsTutorial,tag=!hideTips] run tellraw @s ["","\n",{"text":"It seems like you're new to ","color":"green"},{"text":"Crafty ","bold":true,"color":"dark_purple"},{"text":"Cannoneers","bold":true,"color":"gold"},{"text":"!","color":"green"},"\n",{"text":"We highly recommend you to check out the ","color":"green"},{"text":"Training Island","bold":true,"color":"aqua"},{"text":" before playing the actual game!","color":"green"},"\n",{"text":"You can go there by using the blue warp pad on the left side of the Lobby.","italic":true,"color":"dark_green"},"\n"]
tag @a[tag=NeedsTutorial] remove NeedsTutorial
tellraw @a ["",{"translate":"%1$s","with":[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true,"extra":["\n\n",{"nbt":"SettingsMap","storage":"craftycannoneers:messages","interpret":true}]},{"nbt":"SettingsMap","storage":"craftycannoneers:messages","interpret":true}]}]
tag @a[team=!Lobby] add LeaveGame
scoreboard players set $WinningTeam CmdData 0
scoreboard players set $EndTime CmdData 0
scoreboard players set $barrier CmdData -1
scoreboard players set $dust6 CmdData -1
scoreboard players set $dust3 CmdData -1
scoreboard players set $dust2 CmdData -1

gamerule fallDamage false

bossbar remove minecraft:purpleship
bossbar remove minecraft:orangeship

scoreboard players reset $DamageOrange CmdData
scoreboard players reset $DamagePurple CmdData

execute unless score $ShipHP CmdData matches 1000 unless score $ShipHP CmdData matches 1250 unless score $ShipHP CmdData matches 1500 unless score $ShipHP CmdData matches 2000 run scoreboard players set $ShipHP CmdData 42069
function lobby:customizer/updatesigns

tp @e[type=marker,tag=WeakpointLoc] 0 -1000 0
kill @e[type=marker,tag=WeakpointLoc]
tp @e[type=slime,tag=Weakpoint] 0 -1000 0
kill @e[type=#game:weakpoint,tag=Weakpoint]