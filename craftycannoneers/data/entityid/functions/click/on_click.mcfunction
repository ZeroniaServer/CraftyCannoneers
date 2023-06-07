#> Interacting with Tutorial Weapon item frames
execute if entity @s[tag=TutorialWeapon,tag=Cutlass] as @a[limit=1,tag=clicker] at @s run function tutorial:weapons/cutlass
execute if entity @s[tag=TutorialWeapon,tag=Saber] as @a[limit=1,tag=clicker] at @s run function tutorial:weapons/saber
execute if entity @s[tag=TutorialWeapon,tag=BoardingAxe] as @a[limit=1,tag=clicker] at @s run function tutorial:weapons/boardingaxe
execute if entity @s[tag=TutorialWeapon,tag=BattleAxe] as @a[limit=1,tag=clicker] at @s run function tutorial:weapons/battleaxe
execute if entity @s[tag=TutorialWeapon,tag=Mace] as @a[limit=1,tag=clicker] at @s run function tutorial:weapons/mace
execute if entity @s[tag=TutorialWeapon,tag=Hook] as @a[limit=1,tag=clicker] at @s run function tutorial:weapons/hook
execute if entity @s[tag=TutorialWeapon,tag=Crossbow] as @a[limit=1,tag=clicker] at @s run function tutorial:weapons/crossbow
execute if entity @s[tag=TutorialWeapon,tag=Harpoon] as @a[limit=1,tag=clicker] at @s run function tutorial:weapons/harpoon

#> Interacting with Traders/Teachers
execute if entity @s[tag=Trader] at @s run playsound trader_ambient master @a[limit=1,tag=clicker] ~ ~ ~ 0.5
execute if entity @s[tag=Teacher] at @s run playsound teacher_ambient master @a[limit=1,tag=clicker] ~ ~ ~ 0.5

#> Tags for interacting with cannons
execute if entity @s[tag=CannonVLeft,tag=!GPLocked] run tag @a[limit=1,tag=clicker] add FillLeft
execute if entity @s[tag=CannonVRight,tag=!GPLocked] run tag @a[limit=1,tag=clicker] add FillRight
execute if entity @s[tag=CannonVMain,tag=Charged,tag=!GPLocked] run tag @a[limit=1,tag=clicker] add FillCB

#> Tag for holding gunpowder
tag @a[limit=1,tag=clicker,tag=FillLeft,predicate=cannons:holdgp] add HoldGP
tag @a[limit=1,tag=clicker,tag=FillRight,predicate=cannons:holdgp] add HoldGP

#> Tag for holding cannonballs
#Normal
tag @a[limit=1,tag=clicker,tag=FillCB,predicate=cannons:holdcb] add HoldCB
#Hot
tag @a[limit=1,tag=clicker,tag=FillCB,predicate=cannons:holdfb] add HoldFB
#Cluster
tag @a[limit=1,tag=clicker,tag=FillCB,predicate=cannons:holdcbc] add HoldCBC
#Gas
tag @a[limit=1,tag=clicker,tag=FillCB,predicate=cannons:holdgcb] add HoldGCB
#Chain
tag @a[limit=1,tag=clicker,tag=FillCB,predicate=cannons:holdccb] add HoldCCB
#Bouncy
tag @a[limit=1,tag=clicker,tag=FillCB,predicate=cannons:holdbcb] add HoldBCB
#Player
tag @a[limit=1,tag=clicker,tag=FillCB,predicate=cannons:holdpcb] add HoldPCB
#Tracer
tag @a[limit=1,tag=clicker,tag=FillCB,predicate=cannons:holdtcb] add HoldTCB
#Tracer (Red)
tag @a[limit=1,tag=clicker,tag=FillCB,predicate=cannons:holdtcb_red] add RedTCB
#Golden
tag @a[limit=1,tag=clicker,tag=FillCB,predicate=cannons:holdgocb] add HoldGOCB
#Copper
tag @a[limit=1,tag=clicker,tag=FillCB,predicate=cannons:holdcocb] add HoldCOCB

#> Blast Barrels
execute at @s[tag=BlastBarrel] if entity @a[limit=1,tag=clicker,predicate=cannons:holdgp] as @e[type=armor_stand,tag=BlastBarrel,distance=..1,sort=nearest,limit=1] at @s run function weapons:barrel/fill
execute at @s[tag=BlastBarrel] if entity @a[limit=1,tag=clicker,predicate=!cannons:holdgp] as @e[type=armor_stand,tag=BlastBarrel,distance=..1,sort=nearest,limit=1] at @s run function weapons:barrel/empty

#> Cannon Claim tag
execute at @s as @a[limit=1,tag=clicker,tag=FillCB] run function cannons:checkowner
execute at @s as @a[limit=1,tag=clicker,tag=FillLeft,tag=HoldGP] run function cannons:checkowner
execute at @s as @a[limit=1,tag=clicker,tag=FillRight,tag=HoldGP] run function cannons:checkowner
execute at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] as @a[limit=1,tag=clicker,tag=FillLeft,tag=!HoldGP] run function cannons:checkowner
execute at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] as @a[limit=1,tag=clicker,tag=FillRight,tag=!HoldGP] run function cannons:checkowner
execute at @s run tag @a[limit=1,tag=clicker,tag=FillLeft,tag=!HoldGP] remove FillLeft
execute at @s run tag @a[limit=1,tag=clicker,tag=FillRight,tag=!HoldGP] remove FillRight

#> Pirate Teachers
execute if entity @s[tag=CannonTeacher] as @a[limit=1,tag=clicker] run function lobby:tutorial/cannon
execute if entity @s[tag=ChestTeacher] as @a[limit=1,tag=clicker] run function lobby:tutorial/chest
execute if entity @s[tag=CombatTeacher] as @a[limit=1,tag=clicker] run function lobby:tutorial/combat
execute if entity @s[tag=WeakpointTeacher] as @a[limit=1,tag=clicker] run function lobby:tutorial/weakpoint

#> Treasure Chests (Loot Loader)
execute if entity @s[type=hopper_minecart,tag=!Opened] if entity @a[limit=1,tag=clicker,tag=lowerteam] run tag @s add lowerteam

#> Cargo Traps
execute if entity @s[type=villager,tag=CBTrap] on vehicle run tag @s add TrapExplode

#> Boat Cannons
execute if score $BoatCannons CmdData matches 1 if entity @s[type=villager,tag=BoatCannon] on vehicle on vehicle on passengers if entity @s[type=player,tag=clicker] run say valid
execute if entity @s[type=camel,tag=BoatCannonAnchor] on vehicle on vehicle run ride @a[limit=1,tag=clicker] mount @s[type=boat]
execute if entity @s[type=villager,tag=BoatCannon] on vehicle on vehicle on vehicle run ride @a[limit=1,tag=clicker] mount @s[type=boat]