execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake3,tag=!Exposed3]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake3,tag=!Exposed3]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S3] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=..200}]

#fade 1
execute if score $dust CmdData matches 0..1 if entity @s[tag=S3] at @s run particle dust 1.275 0.445 0.445 1.6 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=200..240}]

#fade 2
execute if score $dust CmdData matches 0..2 if entity @s[tag=S3] at @s run particle dust 1.275 0.805 0.805 1.3 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=240..270}]

#fade 3
execute if score $dust CmdData matches 0..3 if entity @s[tag=S3] at @s run particle dust 1.275 1.085 1.085 1.2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake3,tag=!Exposed3]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake3,tag=!Exposed3]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S3] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=..200}]

#fade 1
execute if score $dust CmdData matches 0..1 if entity @s[tag=S3] at @s run particle dust 1.275 0.445 0.445 1.6 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=200..240}]

#fade 2
execute if score $dust CmdData matches 0..2 if entity @s[tag=S3] at @s run particle dust 1.275 0.805 0.805 1.3 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=240..270}]

#fade 3
execute if score $dust CmdData matches 0..3 if entity @s[tag=S3] at @s run particle dust 1.275 1.085 1.085 1.2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake3,tag=!Exposed3]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake3,tag=!Exposed3]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S3] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=..200}]

#fade 1
execute if score $dust CmdData matches 0..1 if entity @s[tag=S3] at @s run particle dust 1.275 0.445 0.445 1.6 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=200..240}]

#fade 2
execute if score $dust CmdData matches 0..2 if entity @s[tag=S3] at @s run particle dust 1.275 0.805 0.805 1.3 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=240..270}]

#fade 3
execute if score $dust CmdData matches 0..3 if entity @s[tag=S3] at @s run particle dust 1.275 1.085 1.085 1.2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake3,tag=!Exposed3]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake3,tag=!Exposed3]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S3] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=..200}]

#fade 1
execute if score $dust CmdData matches 0..1 if entity @s[tag=S3] at @s run particle dust 1.275 0.445 0.445 1.6 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=200..240}]

#fade 2
execute if score $dust CmdData matches 0..2 if entity @s[tag=S3] at @s run particle dust 1.275 0.805 0.805 1.3 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=240..270}]

#fade 3
execute if score $dust CmdData matches 0..3 if entity @s[tag=S3] at @s run particle dust 1.275 1.085 1.085 1.2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake3,tag=!Exposed3]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake3,tag=!Exposed3]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S3] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=..200}]

#fade 1
execute if score $dust CmdData matches 0..1 if entity @s[tag=S3] at @s run particle dust 1.275 0.445 0.445 1.6 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=200..240}]

#fade 2
execute if score $dust CmdData matches 0..2 if entity @s[tag=S3] at @s run particle dust 1.275 0.805 0.805 1.3 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=240..270}]

#fade 3
execute if score $dust CmdData matches 0..3 if entity @s[tag=S3] at @s run particle dust 1.275 1.085 1.085 1.2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake3,tag=!Exposed3]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake3,tag=!Exposed3]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S3] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=..200}]

#fade 1
execute if score $dust CmdData matches 0..1 if entity @s[tag=S3] at @s run particle dust 1.275 0.445 0.445 1.6 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=200..240}]

#fade 2
execute if score $dust CmdData matches 0..2 if entity @s[tag=S3] at @s run particle dust 1.275 0.805 0.805 1.3 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=240..270}]

#fade 3
execute if score $dust CmdData matches 0..3 if entity @s[tag=S3] at @s run particle dust 1.275 1.085 1.085 1.2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake3,tag=!Exposed3]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake3,tag=!Exposed3]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S3] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=..200}]

#fade 1
execute if score $dust CmdData matches 0..1 if entity @s[tag=S3] at @s run particle dust 1.275 0.445 0.445 1.6 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=200..240}]

#fade 2
execute if score $dust CmdData matches 0..2 if entity @s[tag=S3] at @s run particle dust 1.275 0.805 0.805 1.3 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=240..270}]

#fade 3
execute if score $dust CmdData matches 0..3 if entity @s[tag=S3] at @s run particle dust 1.275 1.085 1.085 1.2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake3,tag=!Exposed3]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake3,tag=!Exposed3]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S3] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=..200}]

#fade 1
execute if score $dust CmdData matches 0..1 if entity @s[tag=S3] at @s run particle dust 1.275 0.445 0.445 1.6 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=200..240}]

#fade 2
execute if score $dust CmdData matches 0..2 if entity @s[tag=S3] at @s run particle dust 1.275 0.805 0.805 1.3 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=240..270}]

#fade 3
execute if score $dust CmdData matches 0..3 if entity @s[tag=S3] at @s run particle dust 1.275 1.085 1.085 1.2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake3,tag=!Exposed3]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake3,tag=!Exposed3]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S3] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=..200}]

#fade 1
execute if score $dust CmdData matches 0..1 if entity @s[tag=S3] at @s run particle dust 1.275 0.445 0.445 1.6 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=200..240}]

#fade 2
execute if score $dust CmdData matches 0..2 if entity @s[tag=S3] at @s run particle dust 1.275 0.805 0.805 1.3 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=240..270}]

#fade 3
execute if score $dust CmdData matches 0..3 if entity @s[tag=S3] at @s run particle dust 1.275 1.085 1.085 1.2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake3,tag=!Exposed3]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake3,tag=!Exposed3]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S3] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=..200}]

#fade 1
execute if score $dust CmdData matches 0..1 if entity @s[tag=S3] at @s run particle dust 1.275 0.445 0.445 1.6 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=200..240}]

#fade 2
execute if score $dust CmdData matches 0..2 if entity @s[tag=S3] at @s run particle dust 1.275 0.805 0.805 1.3 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=240..270}]

#fade 3
execute if score $dust CmdData matches 0..3 if entity @s[tag=S3] at @s run particle dust 1.275 1.085 1.085 1.2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake3,tag=!Exposed3]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake3,tag=!Exposed3]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S3] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=..200}]

#fade 1
execute if score $dust CmdData matches 0..1 if entity @s[tag=S3] at @s run particle dust 1.275 0.445 0.445 1.6 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=200..240}]

#fade 2
execute if score $dust CmdData matches 0..2 if entity @s[tag=S3] at @s run particle dust 1.275 0.805 0.805 1.3 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=240..270}]

#fade 3
execute if score $dust CmdData matches 0..3 if entity @s[tag=S3] at @s run particle dust 1.275 1.085 1.085 1.2 ~0.5 ~ ~ 0 0 0 0 1 force @a[tag=InTower,tag=Exposed3,scores={fakeexpose3=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~-2 ~2
execute if entity @s[tag=2] at @s run tp @s ~ ~-2 ~-2