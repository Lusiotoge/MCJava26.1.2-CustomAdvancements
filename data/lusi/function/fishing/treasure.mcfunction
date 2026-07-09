# 初期化
execute as @a unless score @s lusi_treasure_initialized matches 1 run scoreboard players operation @s lusi_treasure_start = @s lusi_treasure
execute as @a unless score @s lusi_treasure_initialized matches 1 run scoreboard players set @s lusi_treasure_initialized 1

# 差分
execute as @a run scoreboard players operation @s lusi_treasure_diff = @s lusi_treasure
execute as @a run scoreboard players operation @s lusi_treasure_diff -= @s lusi_treasure_start

# Advancement
execute as @a if score @s lusi_treasure_diff matches 1 run advancement grant @s only lusi:fishing/treasure_1
execute as @a if score @s lusi_treasure_diff matches 10 run advancement grant @s only lusi:fishing/treasure_10
execute as @a if score @s lusi_treasure_diff matches 25 run advancement grant @s only lusi:fishing/treasure_25
execute as @a if score @s lusi_treasure_diff matches 50 run advancement grant @s only lusi:fishing/treasure_50
execute as @a if score @s lusi_treasure_diff matches 100 run advancement grant @s only lusi:fishing/treasure_100
execute as @a if score @s lusi_treasure_diff matches 500 run advancement grant @s only lusi:fishing/treasure_500
execute as @a if score @s lusi_treasure_diff matches 1000 run advancement grant @s only lusi:fishing/treasure_1000
execute as @a if score @s lusi_treasure_diff matches 5000 run advancement grant @s only lusi:fishing/treasure_5000