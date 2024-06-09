$execute if score $dust2 CmdData matches 0 at @s run particle dust{color:[1.0,1.0,1.0],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake$(num),tag=!Exposed$(num)]
$execute if score $dust2 CmdData matches 0 at @s run particle dust{color:[0.0,1.0,0.0],scale:0.5} ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake$(num),tag=!Exposed$(num)]

#fade 0
$execute at @s run particle dust{color:[1.0,0.0,0.0],scale:2.0} ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed$(num),scores={fakeexpose$(num)=-1}]
$execute if score $dust6 CmdData matches 0 at @s run particle dust{color:[1.0,0.0,0.0],scale:2.0} ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed$(num),scores={fakeexpose$(num)=0..100}]

#fade 1
$execute if score $dust5 CmdData matches 0 at @s run particle dust{color:[1.0,0.35,0.35],scale:1.6} ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed$(num),scores={fakeexpose$(num)=100..140}]

#fade 2
$execute if score $dust3 CmdData matches 0 at @s run particle dust{color:[1.0,0.63,0.63],scale:1.3} ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed$(num),scores={fakeexpose$(num)=140..170}]

#fade 3
$execute if score $dust3 CmdData matches 0 at @s run particle dust{color:[1.0,0.85,0.85],scale:1.2} ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed$(num),scores={fakeexpose$(num)=170..}]

function tutorial:xparticles/global