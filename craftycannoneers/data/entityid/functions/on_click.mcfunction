#> Interacting with Tutorial Weapon item frames
execute if entity @s[tag=TutorialWeapon,tag=Cutlass] as @p[tag=clicker] run clear @s iron_sword
execute if entity @s[tag=TutorialWeapon,tag=Cutlass] as @p[tag=clicker] run loot give @s loot weapons:cutlass
execute if entity @s[tag=TutorialWeapon,tag=Saber] as @p[tag=clicker] run clear @s diamond_sword
execute if entity @s[tag=TutorialWeapon,tag=Saber] as @p[tag=clicker] run loot give @s loot weapons:saber
execute if entity @s[tag=TutorialWeapon,tag=BoardingAxe] as @p[tag=clicker] run clear @s stone_axe
execute if entity @s[tag=TutorialWeapon,tag=BoardingAxe] as @p[tag=clicker] run loot give @s loot weapons:boarding_axe
execute if entity @s[tag=TutorialWeapon,tag=BattleAxe] as @p[tag=clicker] run clear @s diamond_axe
execute if entity @s[tag=TutorialWeapon,tag=BattleAxe] as @p[tag=clicker] run loot give @s loot weapons:battle_axe
execute if entity @s[tag=TutorialWeapon,tag=Mace] as @p[tag=clicker] run clear @s netherite_shovel
execute if entity @s[tag=TutorialWeapon,tag=Mace] as @p[tag=clicker] run loot give @s loot weapons:mace
execute if entity @s[tag=TutorialWeapon,tag=Hook] as @p[tag=clicker] run clear @s iron_hoe
execute if entity @s[tag=TutorialWeapon,tag=Hook] as @p[tag=clicker] run loot give @s loot weapons:hook
execute if entity @s[tag=TutorialWeapon,tag=Crossbow] as @p[tag=clicker] run clear @s crossbow
execute if entity @s[tag=TutorialWeapon,tag=Crossbow] as @p[tag=clicker] run loot give @s loot weapons:crossbow_loaded
execute if entity @s[tag=TutorialWeapon,tag=Crossbow] as @p[tag=clicker] run clear @s arrow
execute if entity @s[tag=TutorialWeapon,tag=Crossbow] as @p[tag=clicker] run loot give @s loot weapons:arrows
execute if entity @s[tag=TutorialWeapon,tag=Harpoon] as @p[tag=clicker] run clear @s trident
execute if entity @s[tag=TutorialWeapon,tag=Harpoon] as @p[tag=clicker] run loot give @s loot weapons:harpoon
execute if entity @s[tag=TutorialWeapon] as @p[tag=clicker] at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 0.25 2

#> Interacting with Traders/Teachers
execute if entity @s[tag=Trader] at @s run playsound trader_ambient master @p[tag=clicker] ~ ~ ~ 0.5
execute if entity @s[tag=Teacher] at @s run playsound teacher_ambient master @p[tag=clicker] ~ ~ ~ 0.5

#> Tags for interacting with cannons
execute if entity @s[tag=CannonVLeft] run tag @p[tag=clicker] add FillLeft
execute if entity @s[tag=CannonVRight] run tag @p[tag=clicker] add FillRight
execute if entity @s[tag=CannonVMain,tag=Charged] run tag @p[tag=clicker] add FillCB

#> Tag for holding gunpowder
tag @p[tag=clicker,tag=FillLeft,nbt={SelectedItem:{id:"minecraft:gunpowder"}}] add HoldGP
tag @p[tag=clicker,tag=FillRight,nbt={SelectedItem:{id:"minecraft:gunpowder"}}] add HoldGP

#> Tag for holding cannonballs
#Normal
tag @p[tag=clicker,tag=FillCB,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:1b}}}] add HoldCB
#Hot
tag @p[tag=clicker,tag=FillCB,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:2b}}}] add HoldFB
#Cluster
tag @p[tag=clicker,tag=FillCB,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:3b}}}] add HoldCBC
#Gas
tag @p[tag=clicker,tag=FillCB,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:4b}}}] add HoldGCB
#Chain
tag @p[tag=clicker,tag=FillCB,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:5b}}}] add HoldCCB
#Bouncy
tag @p[tag=clicker,tag=FillCB,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:6b}}}] add HoldBCB
#Player
tag @p[tag=clicker,tag=FillCB,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:7b}}}] add HoldPCB
#Tracer
tag @p[tag=clicker,tag=FillCB,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:8b}}}] add HoldTCB
#Golden
tag @p[tag=clicker,tag=FillCB,nbt={SelectedItem:{id:"minecraft:diamond_hoe",tag:{Cannonball:9b}}}] add HoldGOCB

#> Cannon Claim tag
execute at @s as @p[tag=clicker,tag=FillCB] run function cannons:checkowner
execute at @s as @p[tag=clicker,tag=FillLeft,tag=HoldGP] run function cannons:checkowner
execute at @s as @p[tag=clicker,tag=FillRight,tag=HoldGP] run function cannons:checkowner
execute at @s if entity @e[type=armor_stand,tag=GPDispL,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] as @p[tag=clicker,tag=FillLeft,tag=!HoldGP] run function cannons:checkowner
execute at @s if entity @e[type=armor_stand,tag=GPDispR,limit=1,sort=nearest,distance=..3,scores={CmdData=1..}] as @p[tag=clicker,tag=FillRight,tag=!HoldGP] run function cannons:checkowner
execute at @s run tag @p[tag=clicker,tag=FillLeft,tag=!HoldGP] remove FillLeft
execute at @s run tag @p[tag=clicker,tag=FillRight,tag=!HoldGP] remove FillRight