# 初期化
execute as @a unless score @s lusi_sleep_initialized matches 1 run scoreboard players operation @s lusi_sleep_start = @s lusi_sleep
execute as @a unless score @s lusi_sleep_initialized matches 1 run scoreboard players set @s lusi_sleep_initialized 1

# 差分
execute as @a run scoreboard players operation @s lusi_sleep_diff = @s lusi_sleep
execute as @a run scoreboard players operation @s lusi_sleep_diff -= @s lusi_sleep_start

# Advancement
execute as @a if score @s lusi_sleep_diff matches 1 run advancement grant @s only lusi:lifestyle/sleep_1
execute as @a if score @s lusi_sleep_diff matches 10 run advancement grant @s only lusi:lifestyle/sleep_10
execute as @a if score @s lusi_sleep_diff matches 25 run advancement grant @s only lusi:lifestyle/sleep_25
execute as @a if score @s lusi_sleep_diff matches 50 run advancement grant @s only lusi:lifestyle/sleep_50
execute as @a if score @s lusi_sleep_diff matches 100 run advancement grant @s only lusi:lifestyle/sleep_100
execute as @a if score @s lusi_sleep_diff matches 365 run advancement grant @s only lusi:lifestyle/sleep_365
execute as @a if score @s lusi_sleep_diff matches 500 run advancement grant @s only lusi:lifestyle/sleep_500
execute as @a if score @s lusi_sleep_diff matches 1000 run advancement grant @s only lusi:lifestyle/sleep_1000
