# 初期化
execute as @a unless score @s lusi_diamond_initialized matches 1 run scoreboard players operation @s lusi_diamond_start = @s lusi_diamond
execute as @a unless score @s lusi_diamond_initialized matches 1 run scoreboard players operation @s lusi_diamond_start += @s lusi_deepslate_diamond
execute as @a unless score @s lusi_diamond_initialized matches 1 run scoreboard players set @s lusi_diamond_initialized 1

# 合算
execute as @a run scoreboard players operation @s lusi_diamond_total = @s lusi_diamond
execute as @a run scoreboard players operation @s lusi_diamond_total += @s lusi_deepslate_diamond

# 差分
execute as @a run scoreboard players operation @s lusi_diamond_diff = @s lusi_diamond_total
execute as @a run scoreboard players operation @s lusi_diamond_diff -= @s lusi_diamond_start

# Advancement
execute as @a if score @s lusi_diamond_diff matches 1 run advancement grant @s only lusi:mining/diamond_1
execute as @a if score @s lusi_diamond_diff matches 10 run advancement grant @s only lusi:mining/diamond_10
execute as @a if score @s lusi_diamond_diff matches 25 run advancement grant @s only lusi:mining/diamond_25
execute as @a if score @s lusi_diamond_diff matches 50 run advancement grant @s only lusi:mining/diamond_50
execute as @a if score @s lusi_diamond_diff matches 100 run advancement grant @s only lusi:mining/diamond_100
execute as @a if score @s lusi_diamond_diff matches 500 run advancement grant @s only lusi:mining/diamond_500
execute as @a if score @s lusi_diamond_diff matches 1000 run advancement grant @s only lusi:mining/diamond_1000
execute as @a if score @s lusi_diamond_diff matches 5000 run advancement grant @s only lusi:mining/diamond_5000