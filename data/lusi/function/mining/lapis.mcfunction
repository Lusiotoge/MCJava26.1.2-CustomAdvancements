# 初期化
execute as @a unless score @s lusi_lapis_initialized matches 1 run scoreboard players operation @s lusi_lapis_start = @s lusi_lapis
execute as @a unless score @s lusi_lapis_initialized matches 1 run scoreboard players operation @s lusi_lapis_start += @s lusi_deepslate_lapis
execute as @a unless score @s lusi_lapis_initialized matches 1 run scoreboard players set @s lusi_lapis_initialized 1

# 合算
execute as @a run scoreboard players operation @s lusi_lapis_total = @s lusi_lapis
execute as @a run scoreboard players operation @s lusi_lapis_total += @s lusi_deepslate_lapis

# 差分
execute as @a run scoreboard players operation @s lusi_lapis_diff = @s lusi_lapis_total
execute as @a run scoreboard players operation @s lusi_lapis_diff -= @s lusi_lapis_start

# Advancement
execute as @a if score @s lusi_lapis_diff matches 1 run advancement grant @s only lusi:mining/lapis_1
execute as @a if score @s lusi_lapis_diff matches 10 run advancement grant @s only lusi:mining/lapis_10
execute as @a if score @s lusi_lapis_diff matches 25 run advancement grant @s only lusi:mining/lapis_25
execute as @a if score @s lusi_lapis_diff matches 50 run advancement grant @s only lusi:mining/lapis_50
execute as @a if score @s lusi_lapis_diff matches 100 run advancement grant @s only lusi:mining/lapis_100
execute as @a if score @s lusi_lapis_diff matches 500 run advancement grant @s only lusi:mining/lapis_500
execute as @a if score @s lusi_lapis_diff matches 1000 run advancement grant @s only lusi:mining/lapis_1000
execute as @a if score @s lusi_lapis_diff matches 5000 run advancement grant @s only lusi:mining/lapis_5000