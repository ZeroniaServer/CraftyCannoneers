execute if block ~ ~ ~ minecraft:chain[axis=x] run data modify storage iris:data Shape set value [{min: [0.0, 0.40625, 0.40625], max: [1.0, 0.59375, 0.59375]}]
execute if block ~ ~ ~ minecraft:chain[axis=y] run data modify storage iris:data Shape set value [{min: [0.40625, 0.0, 0.40625], max: [0.59375, 1.0, 0.59375]}]
execute if block ~ ~ ~ minecraft:chain[axis=z] run data modify storage iris:data Shape set value [{min: [0.40625, 0.40625, 0.0], max: [0.59375, 0.59375, 1.0]}]
