item replace entity @e[type=glow_item_frame,tag=MapEntity,limit=1] container.0 with diamond_hoe{CustomModelData:82}
execute positioned -54 -23 9 run playsound modifier.open master @a ~ ~ ~ 1 2
particle enchanted_hit -54 -22.5 9.8 1 1 0 0 30 force
particle end_rod -54 -22.5 9.8 1 1 0 0.1 10 force

#> Place modifier signs
fill -53 -24 9 -55 -22 9 air
item replace entity @e[type=armor_stand,tag=LobbyEntity] armor.head with air

item replace entity @e[type=armor_stand,tag=ModifModiIcon] armor.head with diamond_hoe{CustomModelData:83}
setblock -54 -24 9 minecraft:crimson_wall_sign{GlowingText:1b,Color:"light_blue",Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 9153"}}',Text2:'{"text":""}',Text3:'{"text":""}',Text4:'{"text":"Settings","color":"#33ccff"}'}


item replace entity @e[type=armor_stand,tag=NoTracersIcon] armor.head with diamond_hoe{CustomModelData:84}
setblock -53 -22 9 minecraft:crimson_wall_sign{GlowingText:1b,Color:"light_blue",Text1:'{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 17863"}}',Text2:'{"text":""}',Text3:'{"translate":"modifier.no_tracers","color":"#33ccff"}'}

function lobby:customizer/updatemodifiersigns

scoreboard players set $ModiMapActive CmdData 1