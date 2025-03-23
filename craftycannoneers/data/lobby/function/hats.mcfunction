#Remove MVP status if you have an invalid Game ID
execute unless score @s GameID = $current GameID run tag @s remove KillMVP
execute unless score @s GameID = $current GameID run tag @s remove DeathMVP
execute unless score @s GameID = $current GameID run tag @s remove CannonMVP

#Regular
item replace entity @s[team=Lobby] armor.head with diamond_hoe[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat","italic":false,"color":"white"}]',lore=['[{"text":"","italic":false}]','[{"translate":"ahoy","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[39.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]

#Parkour
execute if score @s[team=Lobby] bestParkourTime = @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.parkour","italic":false,"color":"red"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.parkour.lore","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[61.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if score @s[team=!Lobby] bestParkourTime = @e[type=area_effect_cloud,tag=ParkourRecordAEC,limit=1] bestParkourTime run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.parkour","italic":false,"color":"red"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.parkour.lore","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[61.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]

#Kills
execute if entity @s[team=Lobby,tag=KillMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"gold"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.kills","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[42.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if entity @s[team=Orange,tag=KillMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"#ff6600"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.kills","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[95.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if entity @s[team=Purple,tag=KillMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"#9933ff"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.kills","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[102.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]

#Deaths
execute if entity @s[team=Lobby,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"gold"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.deaths","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[48.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if entity @s[team=Orange,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"#ff6600"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.deaths","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[92.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if entity @s[team=Purple,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"#9933ff"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.deaths","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[99.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]

#Cannons
execute if entity @s[team=Lobby,tag=CannonMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"gold"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.damage","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[45.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if entity @s[team=Orange,tag=CannonMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"#ff6600"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.damage","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[93.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if entity @s[team=Purple,tag=CannonMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"#9933ff"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.damage","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[100.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]

#Kills Deaths
execute if entity @s[team=Lobby,tag=KillMVP,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"gold"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.kills_deaths","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[43.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if entity @s[team=Orange,tag=KillMVP,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"#ff6600"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.kills_deaths","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[96.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if entity @s[team=Purple,tag=KillMVP,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"#9933ff"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.kills_deaths","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[103.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]

#Cannons Deaths
execute if entity @s[team=Lobby,tag=CannonMVP,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"gold"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.damage_deaths","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[44.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if entity @s[team=Orange,tag=CannonMVP,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"#ff6600"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.damage_deaths","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[94.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if entity @s[team=Purple,tag=CannonMVP,tag=DeathMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"#9933ff"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.damage_deaths","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[101.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]

#Cannons Kills
execute if entity @s[team=Lobby,tag=CannonMVP,tag=KillMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"gold"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.damage_kills","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[46.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if entity @s[team=Orange,tag=CannonMVP,tag=KillMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"#ff6600"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.damage_kills","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[97.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if entity @s[team=Purple,tag=CannonMVP,tag=KillMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"#9933ff"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.damage_kills","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[104.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]

#All
execute if entity @s[team=Lobby,tag=KillMVP,tag=DeathMVP,tag=CannonMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={binding_curse:1,vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"gold"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.all_three","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[47.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if entity @s[team=Orange,tag=KillMVP,tag=DeathMVP,tag=CannonMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"#ff6600"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.all_three","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[98.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]
execute if entity @s[team=Purple,tag=KillMVP,tag=DeathMVP,tag=CannonMVP] run item replace entity @s armor.head with diamond_hoe[unbreakable={},enchantments={vanishing_curse:1},enchantment_glint_override=false,custom_name='[{"translate":"armor.hat.mvp","italic":false,"color":"#9933ff"}]',lore=['[{"text":"","italic":false}]','[{"translate":"armor.hat.lore","italic":false,"color":"white","underlined":true,"bold":true},{"text":"","italic":false,"color":"dark_purple","underlined":false,"bold":false}]','[{"text":"","italic":false}]','[{"translate":"armor.hat.mvp.all_three","italic":false,"color":"aqua"},{"text":"","italic":false,"color":"dark_purple"}]'],custom_model_data={floats:[105.0f]},tooltip_display={hidden_components:["unbreakable","attribute_modifiers","enchantments"]}]