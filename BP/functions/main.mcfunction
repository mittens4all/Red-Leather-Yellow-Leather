scoreboard objectives add main dummy
scoreboard players add initialize main 0
execute if score initialize main matches 0 run function initialize
scoreboard players set initialize main 1