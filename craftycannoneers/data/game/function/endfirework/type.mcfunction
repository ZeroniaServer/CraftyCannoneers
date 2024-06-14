execute store result score @s RNGscore run random value 0..3
tag @s[scores={RNGscore=..0}] add Type1
tag @s[scores={RNGscore=1}] add Type2
tag @s[scores={RNGscore=2}] add Type3
tag @s[scores={RNGscore=3..}] add Type4
tag @s remove new2