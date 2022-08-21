execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake1,tag=!Exposed1]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake1,tag=!Exposed1]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=..200}]

#fade 1
execute if score $dust CmdData matches 0..1 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]

#fade 2
execute if score $dust CmdData matches 0..2 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]

#fade 3
execute if score $dust CmdData matches 0..2 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake1,tag=!Exposed1]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake1,tag=!Exposed1]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=..200}]

#fade 1
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]

#fade 2
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]

#fade 3
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 2 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 4 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake1,tag=!Exposed1]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake1,tag=!Exposed1]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=..200}]

#fade 1
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]

#fade 2
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]

#fade 3
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 2 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 4 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake1,tag=!Exposed1]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake1,tag=!Exposed1]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=..200}]

#fade 1
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]

#fade 2
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]

#fade 3
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 2 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 4 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake1,tag=!Exposed1]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake1,tag=!Exposed1]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=..200}]

#fade 1
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]

#fade 2
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]

#fade 3
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 2 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 4 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake1,tag=!Exposed1]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake1,tag=!Exposed1]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=..200}]

#fade 1
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]

#fade 2
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]

#fade 3
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 2 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 4 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake1,tag=!Exposed1]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake1,tag=!Exposed1]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=..200}]

#fade 1
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]

#fade 2
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]

#fade 3
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 2 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 4 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake1,tag=!Exposed1]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake1,tag=!Exposed1]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=..200}]

#fade 1
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]

#fade 2
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]

#fade 3
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 2 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 4 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake1,tag=!Exposed1]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake1,tag=!Exposed1]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=..200}]

#fade 1
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]

#fade 2
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]

#fade 3
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 2 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 4 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake1,tag=!Exposed1]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake1,tag=!Exposed1]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=..200}]

#fade 1
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]

#fade 2
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]

#fade 3
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 2 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 4 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~0.2 ~-0.2
execute if entity @s[tag=2] at @s run tp @s ~ ~0.2 ~0.2
execute if score $dust CmdData matches 0 at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=OnDock]
execute at @s run particle dust 1 1 1 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=!SpotFake1,tag=!Exposed1]
execute at @s run particle dust 0 1 0 0.5 ~ ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=UsingSpyglass,tag=SpotFake1,tag=!Exposed1]
#fade 0
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0 0 2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=..200}]

#fade 1
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.35 0.35 1.6 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=200..240}]

#fade 2
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]
execute if score $dust CmdData matches 3 if entity @s[tag=S1] at @s run particle dust 1 0.63 0.63 1.3 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=240..270}]

#fade 3
execute if score $dust CmdData matches 0 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 2 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]
execute if score $dust CmdData matches 4 if entity @s[tag=S1] at @s run particle dust 1 0.85 0.85 1.2 ~0.5 ~ ~ 0 0 0 0 0 force @a[tag=InTower,tag=Exposed1,scores={fakeexpose1=270..}]

execute if entity @s[tag=1] at @s run tp @s ~ ~-2 ~2
execute if entity @s[tag=2] at @s run tp @s ~ ~-2 ~-2