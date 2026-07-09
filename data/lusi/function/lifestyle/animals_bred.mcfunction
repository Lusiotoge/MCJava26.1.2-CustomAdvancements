# 初期化
execute as @a unless score @s lusi_animals_bred_initialized matches 1 run scoreboard players operation @s lusi_animals_bred_start = @s lusi_animals_bred
execute as @a unless score @s lusi_animals_bred_initialized matches 1 run scoreboard players set @s lusi_animals_bred_initialized 1

# 差分
execute as @a run scoreboard players operation @s lusi_animals_bred_diff = @s lusi_animals_bred
execute as @a run scoreboard players operation @s lusi_animals_bred_diff -= @s lusi_animals_bred_start

# Advancement
execute as @a if score @s lusi_animals_bred_diff matches 1 run advancement grant @s only lusi:lifestyle/animals_bred_1
execute as @a if score @s lusi_animals_bred_diff matches 10 run advancement grant @s only lusi:lifestyle/animals_bred_10
execute as @a if score @s lusi_animals_bred_diff matches 25 run advancement grant @s only lusi:lifestyle/animals_bred_25
execute as @a if score @s lusi_animals_bred_diff matches 50 run advancement grant @s only lusi:lifestyle/animals_bred_50
execute as @a if score @s lusi_animals_bred_diff matches 100 run advancement grant @s only lusi:lifestyle/animals_bred_100
execute as @a if score @s lusi_animals_bred_diff matches 500 run advancement grant @s only lusi:lifestyle/animals_bred_500
execute as @a if score @s lusi_animals_bred_diff matches 1000 run advancement grant @s only lusi:lifestyle/animals_bred_1000
execute as @a if score @s lusi_animals_bred_diff matches 5000 run advancement grant @s only lusi:lifestyle/animals_bred_5000