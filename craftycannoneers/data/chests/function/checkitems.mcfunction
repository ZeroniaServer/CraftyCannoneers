loot give @s[predicate=!chests:has_cutlass] loot weapons:cutlass
loot give @s[tag=loaded,predicate=!chests:has_crossbow] loot weapons:crossbow_loaded
loot give @s[tag=!loaded,predicate=!chests:has_crossbow] loot weapons:crossbow
loot give @s[predicate=!chests:has_spyglass] loot weapons:spotting_spyglass
execute unless score $NoTracers CmdData matches 1 run loot give @s[predicate=!chests:has_tracer,tag=!redTracer] loot cannons:tracer
execute unless score $NoTracers CmdData matches 1 run loot give @s[predicate=!chests:has_tracer,tag=redTracer] loot cannons:tracer_red