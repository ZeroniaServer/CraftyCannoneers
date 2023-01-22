#Time Limit
execute if entity @s[scores={modisigns=7853}] run function lobby:customizer/timelimit

#Ship HP
execute if entity @s[scores={modisigns=3384}] run function lobby:customizer/shiphp

#Confirm
execute if entity @s[scores={modisigns=5732}] run function lobby:customizer/confirm

#Restore Defaults
execute if entity @s[scores={modisigns=6497}] run function lobby:customizer/defaults

#Modifiers (toggle on)
execute if entity @s[scores={modisigns=9152}] run function lobby:customizer/modifiers_on
execute if entity @s[scores={modisigns=9152}] run scoreboard players reset @s moditimer

#Modifiers (toggle off)
execute if entity @s[scores={modisigns=9153}] run execute positioned -54 -23 9 run playsound modifier.close master @a ~ ~ ~ 1 1.8
execute if entity @s[scores={modisigns=9153}] run particle crit -54 -22.5 9.8 1 1 0 0 30 force
execute if entity @s[scores={modisigns=9153}] run particle end_rod -54 -22.5 9.8 1 1 0 0.1 10 force
execute if entity @s[scores={modisigns=9153}] run function lobby:customizer/modifiers_off
execute if entity @s[scores={modisigns=9153}] run scoreboard players reset @s moditimer

#No Tracers
execute if entity @s[scores={modisigns=17863}] run function lobby:customizer/notracers

#Sharks
execute if entity @s[scores={modisigns=59636}] run function lobby:customizer/sharks

#No Tracers
execute if entity @s[scores={modisigns=71845}] run function lobby:customizer/seastorms

execute as @a[tag=ModiOwner] at @s run playsound ui.button.click master @s ~ ~ ~ 1 1