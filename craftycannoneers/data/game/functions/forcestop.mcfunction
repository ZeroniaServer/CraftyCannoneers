function lobby:customizer/modifiers_off
function lobby:customizer/open
scoreboard players set @e[type=marker,tag=joinpad] CmdData 0
tag @a[team=!Lobby,team=!Spectator,team=!Developer,advancements={tutorial:objectives/combat=false}] add NeedsTutorial
tag @a[team=!Lobby,team=!Spectator,team=!Developer,advancements={tutorial:objectives/cannon=false}] add NeedsTutorial
tag @a[team=!Lobby,team=!Spectator,team=!Developer,advancements={tutorial:objectives/treasure=false}] add NeedsTutorial
tag @a[team=!Lobby,team=!Spectator,team=!Developer,advancements={tutorial:objectives/watchtower=false}] add NeedsTutorial
execute unless score $TimeLimit CmdData matches 42069.. run title @a[tag=!inParkour] actionbar [""]
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,tag=NeedsTutorial,tag=!hideTips] run tellraw @s ["","\n",{"translate":"chat.new_here","color":"green"},{"translate":"game.crafty","bold":true,"color":"dark_purple"},{"translate":"game.cannoneers","bold":true,"color":"gold"},{"text":"!","color":"green"},"\n",{"translate":"chat.recommend","color":"green"},{"translate":"tutorial.training_island","bold":true,"color":"aqua"},{"translate":"chat.before_playing","color":"green"},"\n",{"translate":"chat.warp_pad","italic":true,"color":"dark_green"},"\n"]
tag @a[tag=NeedsTutorial] remove NeedsTutorial
tellraw @a[tag=!JoinReset] ["",{"translate":"%1$s%9376642$s","with":[{"nbt":"ResourcePack","storage":"craftycannoneers:messages","interpret":true,"extra":["\n\n",{"nbt":"SettingsMap","storage":"craftycannoneers:messages","interpret":true}]},{"nbt":"SettingsMap","storage":"craftycannoneers:messages","interpret":true}]}]
tag @a[team=!Lobby] add LeaveGame
scoreboard players set $WinningTeam CmdData 0
scoreboard players set $EndTime CmdData 0
scoreboard players set $barrier CmdData -1
scoreboard players set $dust6 CmdData -1
scoreboard players set $dust3 CmdData -1
scoreboard players set $dust2 CmdData -1

gamerule fallDamage false

bossbar remove purpleship
bossbar remove purpleship2
bossbar remove purpleship3
bossbar remove orangeship
bossbar remove orangeship2

bossbar set lobbybar value 10

scoreboard players reset $DamageOrange CmdData
scoreboard players reset $DamagePurple CmdData
scoreboard players reset $CritOrange CmdData
scoreboard players reset $CritPurple CmdData
scoreboard players reset $OrangeWP CmdData
scoreboard players reset $PurpleWP CmdData

execute unless score $ShipHP CmdData matches 1000 unless score $ShipHP CmdData matches 1250 unless score $ShipHP CmdData matches 1500 unless score $ShipHP CmdData matches 2000 run scoreboard players set $ShipHP CmdData 42069
function lobby:customizer/updatesigns
scoreboard players reset @a[tag=ModiOwner] moditimer

tp @e[type=marker,tag=WeakpointLoc] 0 -1000 0
kill @e[type=marker,tag=WeakpointLoc]
tp @e[type=slime,tag=Weakpoint] 0 -1000 0
kill @e[type=#game:weakpoint,tag=Weakpoint]

scoreboard players set $WasAuto CmdData 0

scoreboard players set $orange hasArrows 0
scoreboard players set $purple hasArrows 0