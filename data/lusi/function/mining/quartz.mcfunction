# 初期化
execute as @a unless score @s lusi_quartz_initialized matches 1 run scoreboard players operation @s lusi_quartz_start = @s lusi_quartz
execute as @a unless score @s lusi_quartz_initialized matches 1 run scoreboard players set @s lusi_quartz_initialized 1

# 差分
execute as @a run scoreboard players operation @s lusi_quartz_diff = @s lusi_quartz
execute as @a run scoreboard players operation @s lusi_quartz_diff -= @s lusi_quartz_start

# Advancement
execute as @a if score @s lusi_quartz_diff matches 1 run advancement grant @s only lusi:mining/quartz_1
execute as @a if score @s lusi_quartz_diff matches 10 run advancement grant @s only lusi:mining/quartz_10
execute as @a if score @s lusi_quartz_diff matches 25 run advancement grant @s only lusi:mining/quartz_25
execute as @a if score @s lusi_quartz_diff matches 50 run advancement grant @s only lusi:mining/quartz_50
execute as @a if score @s lusi_quartz_diff matches 100 run advancement grant @s only lusi:mining/quartz_100
execute as @a if score @s lusi_quartz_diff matches 500 run advancement grant @s only lusi:mining/quartz_500
execute as @a if score @s lusi_quartz_diff matches 1000 run advancement grant @s only lusi:mining/quartz_1000
execute as @a if score @s lusi_quartz_diff matches 5000 run advancement grant @s only lusi:mining/quartz_5000