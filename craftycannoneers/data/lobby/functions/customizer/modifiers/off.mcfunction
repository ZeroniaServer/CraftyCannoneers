item replace entity @e[type=armor_stand,tag=ModifierIcons] armor.head with air
fill -53 -24 9 -55 -22 9 air

item replace entity @e[type=glow_item_frame,tag=MapEntity,limit=1] container.0 with diamond_hoe{CustomModelData:76}

item replace entity @e[type=armor_stand,tag=TimeIcon,limit=1] armor.head with diamond_hoe{CustomModelData:35}
item replace entity @e[type=armor_stand,tag=HPIcon,limit=1] armor.head with diamond_hoe{CustomModelData:36}
item replace entity @e[type=armor_stand,tag=ConfirmIcon,limit=1] armor.head with diamond_hoe{CustomModelData:37}
item replace entity @e[type=armor_stand,tag=DefaultsIcon,limit=1] armor.head with diamond_hoe{CustomModelData:38}
item replace entity @e[type=armor_stand,tag=ModiIcon,limit=1] armor.head with diamond_hoe{CustomModelData:83}

fill -54 -24 9 -55 -23 9 air
setblock -53 -24 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"red",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 6497"}}','{"text":""}','{"text":""}','{"translate":"customizer.restore_default","color":"#FF0003"}']}}
setblock -55 -24 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"green",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 5732"}}','{"text":""}','{"text":""}','{"translate":"customizer.confirm","color":"#00FF38"}']}}
setblock -54 -24 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"light_blue",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 9152"}}','{"text":""}','{"text":""}','{"translate":"customizer.modifiers","color":"#33ccff"}']}}
setblock -53 -22 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"orange",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 7853"}}','{"text":""}','{"translate":"customizer.game_time","color":"#FFFB00"}','{"text":""}']}}
setblock -55 -22 9 minecraft:crimson_wall_sign{front_text:{has_glowing_text:1b,color:"pink",messages:['{"text":"","clickEvent":{"action":"run_command","value":"trigger modisigns set 3384"}}','{"text":""}','{"translate":"customizer.ship_health","color":"#F8005B"}','{"text":""}']}}
scoreboard players set $ModiMapActive CmdData 0

function lobby:customizer/updatesigns

schedule function lobby:customizer/lightupdate 1t append