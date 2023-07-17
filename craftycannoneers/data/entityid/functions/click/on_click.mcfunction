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

#> Pirate Teachers
execute if entity @s[tag=CannonTeacher] as @a[limit=1,tag=clicker] run function lobby:tutorial/cannon
execute if entity @s[tag=ChestTeacher] as @a[limit=1,tag=clicker] run function lobby:tutorial/chest
execute if entity @s[tag=CombatTeacher] as @a[limit=1,tag=clicker] run function lobby:tutorial/combat
execute if entity @s[tag=WeakpointTeacher] as @a[limit=1,tag=clicker] run function lobby:tutorial/weakpoint

#> Treasure Chests (Loot Loader)
execute if entity @s[type=hopper_minecart,tag=!Opened] if entity @a[limit=1,tag=clicker,tag=lowerteam] run tag @s add lowerteam

#> Boat Cannons
#Mount from clicking camel
execute if entity @s[type=camel,tag=BoatCannonAnchor] on vehicle run ride @a[limit=1,tag=clicker] mount @s[tag=!Sailing]