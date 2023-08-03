execute store result score @s RNGscore run random value 0..99

tag @s[scores={RNGscore=..30}] add CBGunpowder
tag @s[scores={RNGscore=31..60}] add CBGold
tag @s[scores={RNGscore=61..65}] add CBCannonball
tag @s[scores={RNGscore=66..70}] add CBWeapons
tag @s[scores={RNGscore=71..80}] add CBMovement
tag @s[scores={RNGscore=81..90}] add CBBoarding
tag @s[scores={RNGscore=91..}] add CBTrap

tag @s add HasType