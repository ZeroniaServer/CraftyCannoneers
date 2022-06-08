### CANNONBALL
#> Tutorial Advancement trigger
execute as @s[tag=FillCB,advancements={tutorial:objectives/objective6=true}] unless entity @s[tag=!HoldCB,tag=!HoldFB,tag=!HoldCBC,tag=!HoldGCB,tag=!HoldCCB,tag=!HoldBCB,tag=!HoldPCB] run advancement grant @s only tutorial:objectives/objective7

#> Fill Cannonball
#Normal
execute as @s[tag=FillCB,tag=HoldCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @s[tag=FillCB,tag=HoldCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedCB
execute as @s[tag=FillCB,tag=HoldCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID = @s playerUUID
execute as @s[tag=FillCB,tag=HoldCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..4] CmdData 1
scoreboard players add @s[tag=FillCB,tag=HoldCB,tag=UsedCB] MVPcannon 1
#Hot
execute as @s[tag=FillCB,tag=HoldFB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @s[tag=FillCB,tag=HoldFB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedFB
execute as @s[tag=FillCB,tag=HoldFB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID = @s playerUUID
execute as @s[tag=FillCB,tag=HoldFB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..4] CmdData 2
scoreboard players add @s[tag=FillCB,tag=HoldFB,tag=UsedFB] MVPcannon 1
#Cluster
execute as @s[tag=FillCB,tag=HoldCBC] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @s[tag=FillCB,tag=HoldCBC] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedCBC
execute as @s[tag=FillCB,tag=HoldCBC] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID = @s playerUUID
execute as @s[tag=FillCB,tag=HoldCBC] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..4] CmdData 3
scoreboard players add @s[tag=FillCB,tag=HoldCBC,tag=UsedCBC] MVPcannon 1
#Gas
execute as @s[tag=FillCB,tag=HoldGCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @s[tag=FillCB,tag=HoldGCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedGCB
execute as @s[tag=FillCB,tag=HoldGCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..3] playerUUID = @s playerUUID
execute as @s[tag=FillCB,tag=HoldGCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..4] CmdData 4
scoreboard players add @s[tag=FillCB,tag=HoldGCB,tag=UsedGCB] MVPcannon 1
#Chain
execute as @s[tag=FillCB,tag=HoldCCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @s[tag=FillCB,tag=HoldCCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedCCB
execute as @s[tag=FillCB,tag=HoldCCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..3] playerUUID = @s playerUUID
execute as @s[tag=FillCB,tag=HoldCCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..4] CmdData 5
scoreboard players add @s[tag=FillCB,tag=HoldCCB,tag=UsedCCB] MVPcannon 1
#Bouncy
execute as @s[tag=FillCB,tag=HoldBCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @s[tag=FillCB,tag=HoldBCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedBCB
execute as @s[tag=FillCB,tag=HoldBCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID = @s playerUUID
execute as @s[tag=FillCB,tag=HoldBCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..4] CmdData 6
scoreboard players add @s[tag=FillCB,tag=HoldBCB,tag=UsedBCB] MVPcannon 1
#Player
execute as @s[tag=FillCB,tag=HoldPCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @s[tag=FillCB,tag=HoldPCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedPCB
execute as @s[tag=FillCB,tag=HoldPCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID = @s playerUUID
execute as @s[tag=FillCB,tag=HoldPCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..4] CmdData 7
scoreboard players add @s[tag=FillCB,tag=HoldPCB,tag=UsedPCB] MVPcannon 1
#Tracer
execute as @s[tag=FillCB,tag=HoldTCB,advancements={tutorial:objectives/objective5=true}] at @s unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run advancement grant @s only tutorial:objectives/objective6
execute as @s[tag=FillCB,tag=HoldTCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run item replace entity @s weapon.mainhand with air
execute as @s[tag=FillCB,tag=HoldTCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run tag @s add UsedTCB
execute as @s[tag=FillCB,tag=HoldTCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players operation @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..5] playerUUID = @s playerUUID
execute as @s[tag=FillCB,tag=HoldTCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..4] cannonshot 30
execute as @s[tag=FillCB,tag=HoldTCB] unless entity @e[type=armor_stand,tag=CannonDisp,scores={CmdData=1..},limit=1,sort=nearest,distance=..3] run scoreboard players set @e[type=armor_stand,tag=CannonDisp,limit=1,sort=nearest,distance=..4] CmdData 8

#> All cannonballs advancement
advancement grant @s[tag=UsedCB,tag=UsedFB,tag=UsedCBC,tag=UsedGCB,tag=UsedCCB,tag=UsedBCB,tag=UsedPCB,tag=UsedTCB] only tutorial:zzzunlockables/cannoneer
tag @s[advancements={tutorial:zzzunlockables/cannoneer=true}] remove UsedCB
tag @s[advancements={tutorial:zzzunlockables/cannoneer=true}] remove UsedFB
tag @s[advancements={tutorial:zzzunlockables/cannoneer=true}] remove UsedCBC
tag @s[advancements={tutorial:zzzunlockables/cannoneer=true}] remove UsedGCB
tag @s[advancements={tutorial:zzzunlockables/cannoneer=true}] remove UsedCCB
tag @s[advancements={tutorial:zzzunlockables/cannoneer=true}] remove UsedBCB
tag @s[advancements={tutorial:zzzunlockables/cannoneer=true}] remove UsedPCB
tag @s[advancements={tutorial:zzzunlockables/cannoneer=true}] remove UsedTCB