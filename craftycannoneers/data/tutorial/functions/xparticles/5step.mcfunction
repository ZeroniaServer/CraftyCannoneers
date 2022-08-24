execute if score $dust2 CmdData matches 0 at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake5,tag=!Exposed5]
execute if score $dust2 CmdData matches 0 at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake5,tag=!Exposed5]

#fade 0
execute at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed5,scores={fakeexpose5=-1}]
execute if score $dust6 CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed5,scores={fakeexpose5=0..100}]

#fade 1
execute if score $dust5 CmdData matches 0 at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed5,scores={fakeexpose5=100..140}]

#fade 2
execute if score $dust3 CmdData matches 0 at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed5,scores={fakeexpose5=140..170}]

#fade 3
execute if score $dust3 CmdData matches 0 at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed5,scores={fakeexpose5=170..}]

function tutorial:xparticles/global