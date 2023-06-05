#Time Limit
execute if score @s modisigns matches 7853 run function lobby:customizer/timelimit

#Ship HP
execute if score @s modisigns matches 3384 run function lobby:customizer/shiphp

#Confirm
execute if score @s modisigns matches 5732 run function lobby:customizer/confirm

#Restore Defaults
execute if score @s modisigns matches 6497 run function lobby:customizer/defaults

#Modifiers (toggle on)
execute if score @s modisigns matches 9152 run function lobby:customizer/modifiers/on
execute if score @s modisigns matches 9152 run scoreboard players reset @s moditimer

#Modifiers (toggle off)
execute if score @s modisigns matches 9153 positioned -54 -23 9 run playsound modifier.close master @a ~ ~ ~ 1 1.8
execute if score @s modisigns matches 9153 run particle crit -54 -22.5 9.8 1 1 0 0 30 force
execute if score @s modisigns matches 9153 run particle end_rod -54 -22.5 9.8 1 1 0 0.1 10 force
execute if score @s modisigns matches 9153 run function lobby:customizer/modifiers/off
execute if score @s modisigns matches 9153 run scoreboard players reset @s moditimer

#No Tracers
execute if score @s modisigns matches 17863 run function lobby:customizer/modifiers/notracers

#Wildlife
execute if score @s modisigns matches 59636 run function lobby:customizer/modifiers/wildlife

#Sea Storms
execute if score @s modisigns matches 71845 run function lobby:customizer/modifiers/seastorms

#Lost Cargo
execute if score @s modisigns matches 256652 run function lobby:customizer/modifiers/lostcargo

#Grave Robbery
execute if score @s modisigns matches 29013 run function lobby:customizer/modifiers/graverobbery

schedule clear lobby:customizer/modifiers/off
schedule clear lobby:customizer/open
schedule clear lobby:customizer/updatesigns

execute at @s[tag=ModiOwner] run playsound ui.button.click master @s ~ ~ ~ 1 1