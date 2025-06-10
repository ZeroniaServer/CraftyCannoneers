scoreboard players add $EndTime CmdData 1

execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1..10 run title @a title {translate:"\uE031 "}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1 as @a at @s run playsound splash master @s ~ ~ ~ 1 0.7
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1 as @a at @s run playsound splash master @s ~ ~ ~ 1 0.7
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1 as @a at @s run playsound splash master @s ~ ~ ~ 1 0.7
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1 as @a at @s run playsound ding master @s ~ ~ ~ 1 1.1
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1 run title @a subtitle {translate:"game.tie",color:"#000000"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 2 run title @a subtitle {translate:"game.tie",color:"#1a0000"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 3 run title @a subtitle {translate:"game.tie",color:"#330000"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 4 run title @a subtitle {translate:"game.tie",color:"#4d0000"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 5 run title @a subtitle {translate:"game.tie",color:"#660000"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 6 run title @a subtitle {translate:"game.tie",color:"#800000"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 7 run title @a subtitle {translate:"game.tie",color:"#990000"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 8 run title @a subtitle {translate:"game.tie",color:"#b30000"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 9 run title @a subtitle {translate:"game.tie",color:"#cc0000"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 10 run title @a subtitle {translate:"game.tie",color:"#e60000"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 11 run title @a subtitle {translate:"game.tie",color:"#ff0000"}
execute if score $WinningTeam CmdData matches 0 if score $EndTime CmdData matches 1 as @a[team=!Lobby,team=!Spectator,team=!Developer] at @s run playsound tiegame master @s ~ ~ ~ 1 0

execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1..16 run title @a title {text:"\uE02E "}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 as @a at @s run playsound splash master @s ~ ~ ~ 1 0.7
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 as @a at @s run playsound splash master @s ~ ~ ~ 1 0.7
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 as @a at @s run playsound splash master @s ~ ~ ~ 1 0.7
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 as @a at @s run playsound ding master @s ~ ~ ~ 1 1.1
#Global
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 run title @a subtitle {translate:"game.win.orange",color:"#000000"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 2 run title @a subtitle {translate:"game.win.orange",color:"#1a0a00"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 3 run title @a subtitle {translate:"game.win.orange",color:"#331400"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 4 run title @a subtitle {translate:"game.win.orange",color:"#4d1f00"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 5 run title @a subtitle {translate:"game.win.orange",color:"#662900"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 6 run title @a subtitle {translate:"game.win.orange",color:"#803300"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 7 run title @a subtitle {translate:"game.win.orange",color:"#993d00"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 8 run title @a subtitle {translate:"game.win.orange",color:"#b34700"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 9 run title @a subtitle {translate:"game.win.orange",color:"#cc5200"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 10 run title @a subtitle {translate:"game.win.orange",color:"#e65c00"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 11 run title @a subtitle {translate:"game.win.orange",color:"#ff6600"}
#Winners
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 30 run title @a[team=Orange] subtitle {translate:"game.win.orange",color:"#c58c00"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 31 run title @a[team=Orange] subtitle {translate:"game.win.orange",color:"#8ab300"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 32 run title @a[team=Orange] subtitle {translate:"game.win.orange",color:"#50d900"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 33 run title @a[team=Orange] subtitle {translate:"game.win.orange",color:"#15ff00"}
#Losers
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 30 run title @a[team=Purple] subtitle {translate:"game.win.orange",color:"#ff4d00"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 31 run title @a[team=Purple] subtitle {translate:"game.win.orange",color:"#ff3300"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 32 run title @a[team=Purple] subtitle {translate:"game.win.orange",color:"#ff1a00"}
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 33 run title @a[team=Purple] subtitle {translate:"game.win.orange",color:"#ff0000"}

execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 as @a[team=Orange] at @s run playsound wingame master @s ~ ~ ~ 1 1.3
execute if score $WinningTeam CmdData matches 1 if score $EndTime CmdData matches 1 as @a[team=Purple] at @s run playsound losegame master @s ~ ~ ~ 1 2

execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1..16 run title @a title {text:"\uE030 "}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 as @a at @s run playsound splash master @s ~ ~ ~ 1 0.7
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 as @a at @s run playsound splash master @s ~ ~ ~ 1 0.7
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 as @a at @s run playsound splash master @s ~ ~ ~ 1 0.7
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 as @a at @s run playsound ding master @s ~ ~ ~ 1 1.1
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 run title @a subtitle {translate:"game.win.purple",color:"#000000"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 2 run title @a subtitle {translate:"game.win.purple",color:"#0f051a"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 3 run title @a subtitle {translate:"game.win.purple",color:"#1f0a33"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 4 run title @a subtitle {translate:"game.win.purple",color:"#2e0f4d"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 5 run title @a subtitle {translate:"game.win.purple",color:"#3d1466"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 6 run title @a subtitle {translate:"game.win.purple",color:"#4d1a80"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 7 run title @a subtitle {translate:"game.win.purple",color:"#5c1f99"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 8 run title @a subtitle {translate:"game.win.purple",color:"#6b24b3"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 9 run title @a subtitle {translate:"game.win.purple",color:"#7a29cc"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 10 run title @a subtitle {translate:"game.win.purple",color:"#8a2ee6"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 11 run title @a subtitle {translate:"game.win.purple",color:"#9933ff"}
#Winners
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 30 run title @a[team=Purple] subtitle {translate:"game.win.purple",color:"#9933ff"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 31 run title @a[team=Purple] subtitle {translate:"game.win.purple",color:"#579980"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 32 run title @a[team=Purple] subtitle {translate:"game.win.purple",color:"#36cc40"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 33 run title @a[team=Purple] subtitle {translate:"game.win.purple",color:"#15ff00"}
#Losers
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 30 run title @a[team=Orange] subtitle {translate:"game.win.purple",color:"#b326bf"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 31 run title @a[team=Orange] subtitle {translate:"game.win.purple",color:"#cc1a80"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 32 run title @a[team=Orange] subtitle {translate:"game.win.purple",color:"#e60d40"}
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 33 run title @a[team=Orange] subtitle {translate:"game.win.purple",color:"#ff0000"}

execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 as @a[team=Purple] at @s run playsound wingame master @s ~ ~ ~ 1 1.3
execute if score $WinningTeam CmdData matches 2 if score $EndTime CmdData matches 1 as @a[team=Orange] at @s run playsound losegame master @s ~ ~ ~ 1 2

#Explosion animation
execute if score $WinningTeam CmdData matches 1 run particle explosion 72 -28 -55 12 12 4 0.1 10 force
execute if score $WinningTeam CmdData matches 1 run particle lava 72 -28 -55 12 12 4 0.1 12 force
execute if score $WinningTeam CmdData matches 1 run particle large_smoke 72 -28 -55 12 12 4 0.1 8 force
execute if score $WinningTeam CmdData matches 2 run particle explosion 68 -28 55 12 12 4 0.1 10 force
execute if score $WinningTeam CmdData matches 2 run particle lava 68 -28 55 12 12 4 0.1 12 force
execute if score $WinningTeam CmdData matches 2 run particle large_smoke 68 -28 55 12 12 4 0.1 8 force

execute if score $EndTime CmdData matches 1 as @e[type=marker,tag=joinpad] at @s run function lobby:joinpads/lock
execute if score $EndTime CmdData matches 1 as @e[type=item_display,tag=CannonDisp,tag=OnFire] at @s run function cannons:firering/extinguishcannon
execute if score $EndTime CmdData matches 1 as @e[type=villager,tag=Trader] at @s run function arenaclear:replacetrader
execute if score $EndTime CmdData matches 1 run function game:mvpstats/check
execute if score $EndTime CmdData matches 1 run bossbar set lobbybar color red
execute if score $EndTime CmdData matches 1 run bossbar set lobbybar name {translate:"game.ending",bold:true,color:"red"}
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator,team=!Developer] resistance infinite 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator,team=!Developer] instant_health infinite 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator,team=!Developer] regeneration infinite 100 true
execute if score $EndTime CmdData matches 1.. if score $WinningTeam CmdData matches 1 run effect give @a[team=Purple] weakness infinite 100 true
execute if score $EndTime CmdData matches 1.. if score $WinningTeam CmdData matches 2 run effect give @a[team=Orange] weakness infinite 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator,team=!Developer] fire_resistance infinite 100 true
execute if score $EndTime CmdData matches 1.. run effect give @a[team=!Lobby,team=!Spectator,team=!Developer] conduit_power infinite 1 true
execute if score $EndTime CmdData matches 1.. run gamerule fallDamage false

execute if score $EndTime CmdData matches 150 as @a[team=!Lobby,team=!Spectator,team=!Developer] run gamemode spectator
execute if score $EndTime CmdData matches 150 run effect clear @a[team=!Lobby,team=!Spectator,team=!Developer]
execute if score $EndTime CmdData matches 250.. run function game:forcestop

#> Firework purple
execute if score $EndTime CmdData matches 20 if score $WinningTeam CmdData matches 2 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 30 if score $WinningTeam CmdData matches 2 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 40 if score $WinningTeam CmdData matches 2 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework

execute if score $EndTime CmdData matches 100 if score $WinningTeam CmdData matches 2 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 105 if score $WinningTeam CmdData matches 2 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 110 if score $WinningTeam CmdData matches 2 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 115 if score $WinningTeam CmdData matches 2 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 120 if score $WinningTeam CmdData matches 2 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/purple,sort=random,limit=1] add Firework

#> Firework orange
execute if score $EndTime CmdData matches 20 if score $WinningTeam CmdData matches 1 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 30 if score $WinningTeam CmdData matches 1 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 40 if score $WinningTeam CmdData matches 1 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework

execute if score $EndTime CmdData matches 100 if score $WinningTeam CmdData matches 1 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 105 if score $WinningTeam CmdData matches 1 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 110 if score $WinningTeam CmdData matches 1 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 115 if score $WinningTeam CmdData matches 1 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework
execute if score $EndTime CmdData matches 120 if score $WinningTeam CmdData matches 1 run tag @e[type=item_display,tag=cannon,tag=!Firework2,predicate=cannons:ships/orange,sort=random,limit=1] add Firework

execute if score $EndTime CmdData matches 41 run tag @e[type=item_display,tag=cannon,tag=Firework2] remove Firework2
execute if score $EndTime CmdData matches 121 run tag @e[type=item_display,tag=cannon,tag=Firework2] remove Firework2

#> End fireworks
execute as @e[type=item_display,tag=cannon,tag=Firework] at @s run function game:endfirework/cannons
execute as @e[type=item_display,tag=EndFirework] at @s run function game:endfirework/main