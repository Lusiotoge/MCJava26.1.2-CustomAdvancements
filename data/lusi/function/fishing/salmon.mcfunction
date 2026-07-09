# 初期化
execute as @a unless score @s lusi_salmon_initialized matches 1 run scoreboard players operation @s lusi_salmon_start = @s lusi_salmon
execute as @a unless score @s lusi_salmon_initialized matches 1 run scoreboard players set @s lusi_salmon_initialized 1

# 差分
execute as @a run scoreboard players operation @s lusi_salmon_diff = @s lusi_salmon
execute as @a run scoreboard players operation @s lusi_salmon_diff -= @s lusi_salmon_start

# Advancement
execute as @a if score @s lusi_salmon_diff matches 1 run advancement grant @s only lusi:fishing/salmon_1
execute as @a if score @s lusi_salmon_diff matches 10 run advancement grant @s only lusi:fishing/salmon_10
execute as @a if score @s lusi_salmon_diff matches 25 run advancement grant @s only lusi:fishing/salmon_25
execute as @a if score @s lusi_salmon_diff matches 50 run advancement grant @s only lusi:fishing/salmon_50
execute as @a if score @s lusi_salmon_diff matches 100 run advancement grant @s only lusi:fishing/salmon_100
execute as @a if score @s lusi_salmon_diff matches 500 run advancement grant @s only lusi:fishing/salmon_500
execute as @a if score @s lusi_salmon_diff matches 1000 run advancement grant @s only lusi:fishing/salmon_1000
execute as @a if score @s lusi_salmon_diff matches 5000 run advancement grant @s only lusi:fishing/salmon_5000