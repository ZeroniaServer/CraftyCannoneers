#> Raycast
execute unless score $OrangeWP CmdData matches 6.. as @a[team=Orange,tag=!SeeWeakpoint,tag=UsingSpyglass,gamemode=!spectator] at @s unless entity @e[type=slime,tag=Weakpoint,tag=Orange,distance=..101] run function game:raycast/check_start_ray
execute unless score $PurpleWP CmdData matches 6.. as @a[team=Purple,tag=!SeeWeakpoint,tag=UsingSpyglass,gamemode=!spectator] at @s unless entity @e[type=slime,tag=Weakpoint,tag=Purple,distance=..101] run function game:raycast/check_start_ray

#> Notification
execute as @a[tag=UsingSpyglass] unless score @s WPNotify matches 41.. run scoreboard players add @s WPNotify 1
execute if entity @a[team=Purple,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1},limit=1] run scoreboard players set $RemainWPOrange CmdData 6
execute if entity @a[team=Purple,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1},limit=1] run scoreboard players operation $RemainWPOrange CmdData -= $PurpleWP CmdData
execute if entity @a[team=Orange,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1},limit=1] run scoreboard players set $RemainWPPurple CmdData 6
execute if entity @a[team=Orange,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1},limit=1] run scoreboard players operation $RemainWPPurple CmdData -= $OrangeWP CmdData
title @a[tag=UsingSpyglass,scores={WPNotify=1}] title {"text":" "}
execute if score $RemainWPOrange CmdData matches 1.. run title @a[team=Purple,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1}] subtitle ["",{"translate":"weakpoint.plural","color":"green"},{"text":": ","color":"green"},{"score":{"name":"$RemainWPOrange","objective":"CmdData"},"color":"dark_green"}]
execute if score $RemainWPOrange CmdData matches ..0 run title @a[team=Purple,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1}] subtitle ["",{"translate":"weakpoint.plural","color":"red"},{"text":": ","color":"red"},{"score":{"name":"$RemainWPOrange","objective":"CmdData"},"color":"dark_red"}]
execute if score $RemainWPPurple CmdData matches 1.. run title @a[team=Orange,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1}] subtitle ["",{"translate":"weakpoint.plural","color":"green"},{"text":": ","color":"green"},{"score":{"name":"$RemainWPPurple","objective":"CmdData"},"color":"dark_green"}]
execute if score $RemainWPPurple CmdData matches ..0 run title @a[team=Orange,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1}] subtitle ["",{"translate":"weakpoint.plural","color":"red"},{"text":": ","color":"red"},{"score":{"name":"$RemainWPPurple","objective":"CmdData"},"color":"dark_red"}]

title @a[team=!Lobby,tag=UsingSpyglass,scores={WPNotify=40}] title {"text":""}
title @a[team=!Lobby,tag=UsingSpyglass,scores={WPNotify=40}] subtitle {"text":""}
title @a[team=!Lobby,tag=!UsingSpyglass,tag=!SeeWeakpoint,scores={WPNotify=1..}] title {"text":""}
title @a[team=!Lobby,tag=!UsingSpyglass,tag=!SeeWeakpoint,scores={WPNotify=1..}] subtitle {"text":""}
scoreboard players reset @a[tag=!UsingSpyglass,scores={WPNotify=1..}] WPNotify

#> X particles
scoreboard players reset $runxparticlepurple CmdData
execute store success score $runxparticlepurple CmdData if entity @a[team=Purple,tag=UsingSpyglass,limit=1]
execute unless score $runxparticlepurple CmdData matches 1 store success score $runxparticlepurple CmdData if entity @e[type=slime,tag=Spotted,tag=Purple,limit=1]
execute if score $runxparticlepurple CmdData matches 1 as @e[type=marker,tag=XParticle,tag=Purple] at @s run function game:shipweakpoint/xparticle/purple

scoreboard players reset $runxparticleorange CmdData
execute store success score $runxparticleorange CmdData if entity @a[team=Orange,tag=UsingSpyglass,limit=1]
execute unless score $runxparticleorange CmdData matches 1 store success score $runxparticleorange CmdData if entity @e[type=slime,tag=Spotted,tag=Orange,limit=1]
execute if score $runxparticleorange CmdData matches 1 as @e[type=marker,tag=XParticle,tag=Orange] at @s run function game:shipweakpoint/xparticle/orange

#> Weakpoint slimes
execute as @e[type=slime,tag=Weakpoint] at @s run function game:shipweakpoint/slimes

#> Players
execute as @a[team=!Lobby,team=!Spectator,team=!Developer,gamemode=!spectator] run function game:shipweakpoint/players
