execute as @e[type=husk,tag=TDZombie] store result score @s CmdData run data get entity @s Health

execute as @e[type=husk,tag=TDZombie] if score @s eyeclick > @s CmdData at @s run tag @e[type=armor_stand,tag=TDAS,distance=..1,limit=1,sort=nearest] add DummyHurtAnim
execute as @e[type=husk,tag=TDZombie] if score @s eyeclick > @s CmdData run tag @s add DummyHurt
execute as @e[type=husk,tag=TDZombie] if score @s eyeclick > @s CmdData run scoreboard players reset @e[type=armor_stand,tag=TDAS,distance=..1,limit=1,sort=nearest,scores={CmdData=1..}] CmdData
execute as @e[type=husk,tag=TDZombie] if score @s eyeclick > @s CmdData store result score @s eyeclick run data get entity @s Health

execute as @e[type=husk,tag=DummyHurt,scores={CmdData=19}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"19","color":"green"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=18}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"18","color":"green"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=17}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"17","color":"green"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=16}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"16","color":"green"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=15}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"15","color":"green"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=14}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"14","color":"green"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=13}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"13","color":"gold"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=12}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"12","color":"gold"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=11}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"11","color":"gold"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=10}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"10","color":"gold"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=9}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"09","color":"gold"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=8}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"08","color":"yellow"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=7}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"07","color":"yellow"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=6}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"06","color":"yellow"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=5}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"05","color":"yellow"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=4}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"04","color":"red"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=3}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"03","color":"red"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=2}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"02","color":"red"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=1}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"01","color":"red"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=husk,tag=DummyHurt,scores={CmdData=..0}] at @s run data merge entity @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest] {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"01","color":"red"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=area_effect_cloud,tag=NameTag] at @s unless entity @e[type=husk,tag=TDZombie,distance=..2] run data merge entity @s {CustomName:'["",{"text":"❤ ","color":"red"},{"text":"00","color":"dark_red"},{"text":"/","color":"gray"},{"text":"20","color":"dark_green"}]'}
execute as @e[type=armor_stand,tag=TDAS] at @s unless entity @e[type=husk,tag=TDZombie,distance=..1] run tag @s add DummyDead

execute as @e[type=husk,tag=DummyHurt] at @s run tag @s remove DummyHurt




scoreboard players add @e[type=armor_stand,tag=DummyHurtAnim] CmdData 1
execute as @e[type=armor_stand,tag=DummyHurtAnim,scores={CmdData=1}] at @s run playsound minecraft:block.wool.hit master @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=DummyHurtAnim,scores={CmdData=1}] at @s run playsound minecraft:entity.armor_stand.hit master @a ~ ~ ~ 1 0.7
execute as @e[type=armor_stand,tag=DummyHurtAnim,scores={CmdData=1}] run data merge entity @s {Pose:{Head:[0f,4f,0f]}}
execute as @e[type=armor_stand,tag=DummyHurtAnim,scores={CmdData=2}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=DummyHurtAnim,scores={CmdData=3}] run data merge entity @s {Pose:{Head:[0f,-4f,0f]}}
execute as @e[type=armor_stand,tag=DummyHurtAnim,scores={CmdData=4}] run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute as @e[type=armor_stand,tag=DummyHurtAnim,scores={CmdData=4..}] run tag @s remove DummyHurtAnim
execute as @e[type=armor_stand,tag=TDAS,tag=!DummyHurtAnim,scores={CmdData=1..}] run scoreboard players reset @s CmdData

scoreboard players add @e[type=armor_stand,tag=DummyDead] eyeclick 1

execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=1}] at @s run playsound minecraft:block.wool.hit master @a ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=1}] at @s run playsound minecraft:block.wool.hit master @a ~ ~ ~ 1 0
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=1}] at @s run playsound minecraft:entity.armor_stand.hit master @a ~ ~ ~ 1 0.7
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=1}] at @s run playsound minecraft:entity.armor_stand.hit master @a ~ ~ ~ 1 2
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=1}] run item replace entity @s armor.head with air
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=1}] at @s run particle cloud ~ ~ ~ 0 0 0 0.2 10
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=1}] at @s run particle block oak_planks ~ ~1.3 ~ 0 0.3 0 0.1 50
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=1}] at @s run particle block hay_block ^0.2 ^1 ^ 0 0.1 0 0.1 20
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=1}] at @s run particle block hay_block ^-0.2 ^1 ^ 0 0.1 0 0.1 20
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=2}] at @s run summon item ~ ~1.2 ~ {Tags:["DummyDeadItem","pumpkin"],Item:{id:"minecraft:carved_pumpkin",Count:1b},PickupDelay:1000,Motion:[0.03d,0.2d,0.05d]}
execute as @e[type=item,tag=DummyDeadItem,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=2}] at @s run summon item ~ ~1.2 ~ {Tags:["DummyDeadItem","wheat"],Item:{id:"minecraft:wheat",Count:1b},PickupDelay:1000,Motion:[-0.05d,0.25d,0.05d]}
execute as @e[type=item,tag=DummyDeadItem,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=2}] at @s run summon item ~ ~1.2 ~ {Tags:["DummyDeadItem","wheat"],Item:{id:"minecraft:wheat",Count:1b},PickupDelay:1000,Motion:[-0.01d,0.22d,0.05d]}
execute as @e[type=item,tag=DummyDeadItem,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=2}] at @s run summon item ~ ~1.2 ~ {Tags:["DummyDeadItem","wheat"],Item:{id:"minecraft:wheat",Count:1b},PickupDelay:1000,Motion:[0.05d,0.2d,-0.02d]}
execute as @e[type=item,tag=DummyDeadItem,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=2}] at @s run summon item ~ ~1.2 ~ {Tags:["DummyDeadItem","hat"],Item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:39},Count:1b},PickupDelay:1000,Motion:[-0.05d,0.2d,-0.05d]}
execute as @e[type=item,tag=DummyDeadItem,tag=!UUIDConfirmed] run data modify entity @s Item.tag.hash set from entity @s UUID[0]
tag @e[type=item,tag=DummyDeadItem,tag=!UUIDConfirmed] add UUIDConfirmed
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=5..}] at @s run kill @e[type=area_effect_cloud,tag=NameTag,distance=..2,limit=1,sort=nearest]
execute as @e[type=armor_stand,tag=DummyDead,scores={eyeclick=5..}] at @s run kill @s

scoreboard players add @e[type=item,tag=DummyDeadItem] CmdData 1
execute as @e[type=item,tag=DummyDeadItem,tag=wheat,scores={CmdData=36}] at @s run particle item wheat ~ ~0.3 ~ 0 0 0 0.1 12
execute as @e[type=item,tag=DummyDeadItem,tag=pumpkin,scores={CmdData=36}] at @s run particle block carved_pumpkin ~ ~0.3 ~ 0 0 0 0.1 12
execute as @e[type=item,tag=DummyDeadItem,tag=hat,scores={CmdData=36}] at @s run particle block black_wool ~ ~0.3 ~ 0 0 0 0.1 12
execute as @e[type=item,tag=DummyDeadItem,scores={CmdData=40..}] run kill @s