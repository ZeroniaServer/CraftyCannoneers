#> Raycast
execute if score $gamestate CmdData matches 2 unless score $OrangeWP CmdData matches 6.. as @a[team=Orange,tag=!SeeWeakpoint,tag=UsingSpyglass,gamemode=!spectator] at @s anchored eyes positioned ^ ^ ^ anchored feet unless entity @e[type=slime,tag=Weakpoint,tag=Orange,distance=..101] run function game:raycast/start_ray
execute if score $gamestate CmdData matches 2 unless score $PurpleWP CmdData matches 6.. as @a[team=Purple,tag=!SeeWeakpoint,tag=UsingSpyglass,gamemode=!spectator] at @s anchored eyes positioned ^ ^ ^ anchored feet unless entity @e[type=slime,tag=Weakpoint,tag=Purple,distance=..101] run function game:raycast/start_ray

#> Notification
scoreboard players add @a[tag=UsingSpyglass] WPNotify 1
execute if score $gamestate CmdData matches 2 as @a[team=Purple,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1},limit=1] run scoreboard players set $RemainWPOrange CmdData 6
execute if score $gamestate CmdData matches 2 as @a[team=Purple,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1},limit=1] run scoreboard players operation $RemainWPOrange CmdData -= $PurpleWP CmdData
execute if score $gamestate CmdData matches 2 as @a[team=Orange,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1},limit=1] run scoreboard players set $RemainWPPurple CmdData 6
execute if score $gamestate CmdData matches 2 as @a[team=Orange,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1},limit=1] run scoreboard players operation $RemainWPPurple CmdData -= $OrangeWP CmdData
execute if score $gamestate CmdData matches 2 run title @a[tag=UsingSpyglass,scores={WPNotify=1}] title {"text":" "}
execute if score $gamestate CmdData matches 2 if score $RemainWPOrange CmdData matches 1.. run title @a[team=Purple,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1}] subtitle ["",{"translate":"weakpoint.plural","color":"green"},{"text":": ","color":"green"},{"score":{"name":"$RemainWPOrange","objective":"CmdData"},"color":"dark_green"}]
execute if score $gamestate CmdData matches 2 if score $RemainWPOrange CmdData matches ..0 run title @a[team=Purple,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1}] subtitle ["",{"translate":"weakpoint.plural","color":"red"},{"text":": ","color":"red"},{"score":{"name":"$RemainWPOrange","objective":"CmdData"},"color":"dark_red"}]
execute if score $gamestate CmdData matches 2 if score $RemainWPPurple CmdData matches 1.. run title @a[team=Orange,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1}] subtitle ["",{"translate":"weakpoint.plural","color":"green"},{"text":": ","color":"green"},{"score":{"name":"$RemainWPPurple","objective":"CmdData"},"color":"dark_green"}]
execute if score $gamestate CmdData matches 2 if score $RemainWPPurple CmdData matches ..0 run title @a[team=Orange,tag=!SeeWeakpoint,tag=UsingSpyglass,scores={WPNotify=1}] subtitle ["",{"translate":"weakpoint.plural","color":"red"},{"text":": ","color":"red"},{"score":{"name":"$RemainWPPurple","objective":"CmdData"},"color":"dark_red"}]

execute if score $gamestate CmdData matches 2 run title @a[tag=UsingSpyglass,scores={WPNotify=40}] title {"text":" "}
execute if score $gamestate CmdData matches 2 run title @a[tag=UsingSpyglass,scores={WPNotify=40}] subtitle {"text":" "}
title @a[tag=!UsingSpyglass,tag=!SeeWeakpoint,scores={WPNotify=1..}] title {"text":" "}
title @a[tag=!UsingSpyglass,tag=!SeeWeakpoint,scores={WPNotify=1..}] subtitle {"text":" "}
scoreboard players reset @a[tag=!UsingSpyglass,scores={WPNotify=-1000..}] WPNotify

#> X particles
execute if score $gamestate CmdData matches 2 as @e[type=marker,tag=XParticle] at @s run function game:shipweakpoint/xparticle

#> Weakpoint slimes
execute if score $gamestate CmdData matches 2 as @e[type=slime,tag=Weakpoint] at @s run function game:shipweakpoint/slimes

#> Players
execute if score $gamestate CmdData matches 2 as @a[team=!Lobby,team=!Spectator,team=!Developer,gamemode=!spectator] run function game:shipweakpoint/players

#> Fake weakpoint damage
execute as @e[type=marker,tag=FakePointMarker,tag=!WeakpointDamaged] at @s positioned ~-3 ~ ~ if entity @e[type=marker,tag=ImpactMarker,distance=..3] run function game:shipweakpoint/fakerespawn