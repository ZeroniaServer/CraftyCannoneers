kill @e[type=endermite,tag=CrabEntity]
kill @e[type=item_display,tag=CrabEntity]
summon endermite 70 -27 0 {CustomName:'{"translate":"mob.crab"}',Tags:["CrabEntity","CrabVehicle"],Lifetime:-2147483648,PlayerSpawned:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:-1,ShowParticles:0b},{Id:6,Amplifier:100b,Duration:-1,ShowParticles:0b},{Id:13,Amplifier:100b,Duration:-1,ShowParticles:0b},{Id:18,Amplifier:100b,Duration:-1,ShowParticles:0b}],Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.max_health",Base:100},{Name:"generic.attack_damage",Base:0}],Passengers:[{id:"minecraft:endermite",Tags:["CrabEntity","CrabController"],Lifetime:-2147483648,PlayerSpawned:1b,ActiveEffects:[{Id:14,Amplifier:0b,Duration:-1,ShowParticles:0b},{Id:6,Amplifier:100b,Duration:-1,ShowParticles:0b},{Id:13,Amplifier:100b,Duration:-1,ShowParticles:0b},{Id:18,Amplifier:100b,Duration:-1,ShowParticles:0b}],Silent:1b,PersistenceRequired:1b,Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.max_health",Base:100},{Name:"generic.attack_damage",Base:0}]},{id:"minecraft:item_display",item_display:"fixed",Tags:["CrabEntity","CrabDisplay"],item:{id:"minecraft:diamond_hoe",tag:{CustomModelData:117},Count:1b},Passengers:[{id:"minecraft:item_display",item_display:"fixed",Tags:["CrabEntity","CrabItemDisplay"]}]}]}