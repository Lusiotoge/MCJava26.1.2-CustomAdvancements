# 初期化
execute as @a unless score @s lusi_emerald_initialized matches 1 run scoreboard players operation @s lusi_emerald_start = @s lusi_emerald
execute as @a unless score @s lusi_emerald_initialized matches 1 run scoreboard players operation @s lusi_emerald_start += @s lusi_deepslate_emerald
execute as @a unless score @s lusi_emerald_initialized matches 1 run scoreboard players set @s lusi_emerald_initialized 1

# 合算
execute as @a run scoreboard players operation @s lusi_emerald_total = @s lusi_emerald
execute as @a run scoreboard players operation @s lusi_emerald_total += @s lusi_deepslate_emerald

# 差分
execute as @a run scoreboard players operation @s lusi_emerald_diff = @s lusi_emerald_total
execute as @a run scoreboard players operation @s lusi_emerald_diff -= @s lusi_emerald_start

# Advancement
execute as @a if score @s lusi_emerald_diff matches 1 run advancement grant @s only lusi:mining/emerald_1
execute as @a if score @s lusi_emerald_diff matches 10 run advancement grant @s only lusi:mining/emerald_10
execute as @a if score @s lusi_emerald_diff matches 25 run advancement grant @s only lusi:mining/emerald_25
execute as @a if score @s lusi_emerald_diff matches 50 run advancement grant @s only lusi:mining/emerald_50
execute as @a if score @s lusi_emerald_diff matches 100 run advancement grant @s only lusi:mining/emerald_100
execute as @a if score @s lusi_emerald_diff matches 500 run advancement grant @s only lusi:mining/emerald_500
