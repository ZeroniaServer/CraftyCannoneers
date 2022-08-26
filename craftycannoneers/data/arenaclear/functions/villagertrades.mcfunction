#> EXAMPLE TRADE
#data modify entity @s Offers.Recipes append value {buy:{id:gold_nugget,Count:20,tag:{display:{Name:'[{"text":"Gold","italic":false,"color":"gold"}]',Lore:['[{"text":"Currency item used to purchase","italic":false,"color":"white"}]','[{"text":"special cannonballs.","italic":false,"color":"white"}]']}}},buyB:{},sell:{id:diamond_hoe,Count:1,tag:{CustomModelData:16,display:{}}},rewardExp:0b,maxUses:9999999}

#Cannonball Trade
data modify entity @s Offers.Recipes append value {buy:{id:gold_nugget,Count:8,tag:{display:{Name:'[{"text":"Gold","italic":false,"color":"gold"}]',Lore:['[{"text":"Currency item used to purchase","italic":false,"color":"white"}]','[{"text":"special cannonballs.","italic":false,"color":"white"}]']}}},buyB:{},sell:{id:diamond_hoe,Count:1,tag:{Unbreakable:1b,HideFlags:127,CustomModelData:16,Cannonball:1b,display:{Name:'[{"text":"Cannonball","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"The most basic type of cannonball.","italic":false,"color":"white"}]']}}},rewardExp:0b,maxUses:9999999}

#Cannonball Cluster Trade
data modify entity @s Offers.Recipes append value {buy:{id:gold_nugget,Count:15,tag:{display:{Name:'[{"text":"Gold","italic":false,"color":"gold"}]',Lore:['[{"text":"Currency item used to purchase","italic":false,"color":"white"}]','[{"text":"special cannonballs.","italic":false,"color":"white"}]']}}},buyB:{id:diamond_hoe,Count:1,tag:{Unbreakable:1b,HideFlags:127,CustomModelData:16,Cannonball:1b,display:{Name:'[{"text":"Cannonball","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"The most basic type of cannonball.","italic":false,"color":"white"}]']}}},sell:{id:diamond_hoe,Count:1,tag:{Unbreakable:1b,HideFlags:127,CustomModelData:29,Cannonball:3b,display:{Name:'[{"text":"Cannonball Cluster","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Shoot 5 small cannonballs in 1 shot.","italic":false,"color":"white"}]','[{"text":"These are extremely inaccurate!","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Best used against enemies occupying","italic":false,"color":"aqua"}]','[{"text":"the center island...","italic":false,"color":"aqua"}]']}}},rewardExp:0b,maxUses:9999999}

#Player Cannonball Trade
data modify entity @s Offers.Recipes append value {buy:{id:gold_nugget,Count:16,tag:{display:{Name:'[{"text":"Gold","italic":false,"color":"gold"}]',Lore:['[{"text":"Currency item used to purchase","italic":false,"color":"white"}]','[{"text":"special cannonballs.","italic":false,"color":"white"}]']}}},buyB:{id:diamond_hoe,Count:1,tag:{Unbreakable:1b,HideFlags:127,CustomModelData:16,Cannonball:1b,display:{Name:'[{"text":"Cannonball","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"The most basic type of cannonball.","italic":false,"color":"white"}]']}}},sell:{id:diamond_hoe,Count:1,tag:{Unbreakable:1b,HideFlags:127,CustomModelData:56,Cannonball:7b,display:{Name:'[{"text":"Player Cannonball","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Non-lethal Cannonball. Launch yourself by","italic":false,"color":"white"}]','[{"text":"shooting the barrel that you\'re inside of.","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Deals no damage to blocks or players.","italic":false,"color":"aqua"}]']}}},rewardExp:0b,maxUses:9999999}

#Gas Cannonball Trade
data modify entity @s Offers.Recipes append value {buy:{id:gold_nugget,Count:18,tag:{display:{Name:'[{"text":"Gold","italic":false,"color":"gold"}]',Lore:['[{"text":"Currency item used to purchase","italic":false,"color":"white"}]','[{"text":"special cannonballs.","italic":false,"color":"white"}]']}}},buyB:{id:diamond_hoe,Count:1,tag:{Unbreakable:1b,HideFlags:127,CustomModelData:16,Cannonball:1b,display:{Name:'[{"text":"Cannonball","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"The most basic type of cannonball.","italic":false,"color":"white"}]']}}},sell:{id:diamond_hoe,Count:1,tag:{Unbreakable:1b,HideFlags:127,CustomModelData:31,Cannonball:4b,display:{Name:'[{"text":"Gas Cannonball","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"On impact, releases a toxic cloud","italic":false,"color":"white"}]','[{"text":"of gas, poisoning players inside.","italic":false,"color":"white"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Has a special interaction with","italic":false,"color":"aqua"}]','[{"text":"Hot Cannonballs...","italic":false,"color":"aqua"}]']}}},rewardExp:0b,maxUses:9999999}

#Hot Cannonball Trade
data modify entity @s Offers.Recipes append value {buy:{id:gold_nugget,Count:23,tag:{display:{Name:'[{"text":"Gold","italic":false,"color":"gold"}]',Lore:['[{"text":"Currency item used to purchase","italic":false,"color":"white"}]','[{"text":"special cannonballs.","italic":false,"color":"white"}]']}}},buyB:{id:diamond_hoe,Count:1,tag:{Unbreakable:1b,HideFlags:127,CustomModelData:16,Cannonball:1b,display:{Name:'[{"text":"Cannonball","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"The most basic type of cannonball.","italic":false,"color":"white"}]']}}},sell:{id:diamond_hoe,Count:1,tag:{Unbreakable:1b,HideFlags:127,CustomModelData:22,Cannonball:2b,display:{Name:'[{"text":"Hot Cannonball","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"On impact, sets an area around","italic":false,"color":"white"}]','[{"text":"it on fire. Fire temporarily","italic":false,"color":"white"}]','[{"text":"disables cannons.","italic":false,"color":"white"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Has a special interaction with","italic":false,"color":"aqua"}]','[{"text":"Gas Cannonballs...","italic":false,"color":"aqua"}]']}}},rewardExp:0b,maxUses:9999999}

#Bouncy Cannonball Trade
data modify entity @s Offers.Recipes append value {buy:{id:gold_nugget,Count:25,tag:{display:{Name:'[{"text":"Gold","italic":false,"color":"gold"}]',Lore:['[{"text":"Currency item used to purchase","italic":false,"color":"white"}]','[{"text":"special cannonballs.","italic":false,"color":"white"}]']}}},buyB:{id:diamond_hoe,Count:1,tag:{Unbreakable:1b,HideFlags:127,CustomModelData:16,Cannonball:1b,display:{Name:'[{"text":"Cannonball","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"The most basic type of cannonball.","italic":false,"color":"white"}]']}}},sell:{id:diamond_hoe,Count:1,tag:{Unbreakable:1b,HideFlags:127,CustomModelData:55,Cannonball:6b,display:{Name:'[{"text":"Bouncy Cannonball","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Bounces around on any surface","italic":false,"color":"white"}]','[{"text":"before exploding.","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Every time it bounces it deals","italic":false,"color":"aqua"}]','[{"text":"damage to surrounding players.","italic":false,"color":"aqua"}]']}}},rewardExp:0b,maxUses:9999999}

#Chain Cannonball Trade
data modify entity @s Offers.Recipes append value {buy:{id:gold_nugget,Count:25,tag:{display:{Name:'[{"text":"Gold","italic":false,"color":"gold"}]',Lore:['[{"text":"Currency item used to purchase","italic":false,"color":"white"}]','[{"text":"special cannonballs.","italic":false,"color":"white"}]']}}},buyB:{id:diamond_hoe,Count:1,tag:{Unbreakable:1b,HideFlags:127,CustomModelData:16,Cannonball:1b,display:{Name:'[{"text":"Cannonball","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"The most basic type of cannonball.","italic":false,"color":"white"}]']}}},sell:{id:diamond_hoe,Count:1,tag:{Unbreakable:1b,HideFlags:127,CustomModelData:32,Cannonball:5b,display:{Name:'[{"text":"Chain Cannonball","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Half Cannonballs connected together","italic":false,"color":"white"}]','[{"text":"by a chain. A little less accurate,","italic":false,"color":"white"}]','[{"text":"but it has a wider area of effect.","italic":false,"color":"white"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Deals bonus damage to sails!","italic":false,"color":"aqua"}]']}}},rewardExp:0b,maxUses:9999999}

team join NoName @s