execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake4,tag=!Exposed4]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake4,tag=!Exposed4]

#fade 0
execute if score $dust6 CmdData matches 0 if entity @s[tag=S4] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed4,scores={fakeexpose4=..200}]

#fade 1
execute if score $dust3 CmdData matches 0 if entity @s[tag=S4] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed4,scores={fakeexpose4=200..240}]

#fade 2
execute if score $dust3 CmdData matches 0 if entity @s[tag=S4] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed4,scores={fakeexpose4=240..270}]

#fade 3
execute if score $dust2 CmdData matches 0 if entity @s[tag=S4] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed4,scores={fakeexpose4=270..}]

function tutorial:xparticles/global