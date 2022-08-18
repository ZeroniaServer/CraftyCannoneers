function lobby:customizer/open
scoreboard players set @e[type=marker,tag=joinpad] CmdData 0
tag @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/combat=false}] add NeedsTutorial
tag @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/cannon=false}] add NeedsTutorial
tag @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/treasure=false}] add NeedsTutorial
tag @a[team=!Lobby,team=!Spectator,advancements={tutorial:objectives/watchtower=false}] add NeedsTutorial
tag @a[tag=NeedsTutorial] remove NeedsTutorial
execute as @a[team=!Lobby,team=!Spectator,tag=NeedsTutorial,tag=!hideTips] run tellraw @s ["","\n",{"text":"It seems like you're new to ","color":"green"},{"text":"Crafty ","bold":true,"color":"dark_purple"},{"text":"Cannoneers","bold":true,"color":"gold"},{"text":"!","color":"green"},"\n",{"text":"We highly recommend you to check out the ","color":"green"},{"text":"Training Island","bold":true,"color":"aqua"},{"text":" before playing the actual game!","color":"green"},"\n",{"text":"You can go there by using the blue warp pad on the left side of the Lobby.","italic":true,"color":"dark_green"},"\n"]
tag @a[team=!Lobby] add LeaveGame
scoreboard players set $WinningTeam CmdData 0
scoreboard players set $EndTime CmdData 0

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