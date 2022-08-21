execute if score $dust2 CmdData matches 0 at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake6,tag=!Exposed6]
execute if score $dust2 CmdData matches 0 at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake6,tag=!Exposed6]

#fade 0
execute if score $dust6 CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed6,scores={fakeexpose6=..200}]

#fade 1
execute if score $dust5 CmdData matches 0 at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed6,scores={fakeexpose6=200..240}]

#fade 2
execute if score $dust3 CmdData matches 0 at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed6,scores={fakeexpose6=240..270}]

#fade 3
execute if score $dust3 CmdData matches 0 at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed6,scores={fakeexpose6=270..}]

function tutorial:xparticles/global