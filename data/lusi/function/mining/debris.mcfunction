# 初期化
execute as @a unless score @s lusi_ancient_debris_initialized matches 1 run scoreboard players operation @s lusi_ancient_debris_start = @s lusi_ancient_debris
execute as @a unless score @s lusi_ancient_debris_initialized matches 1 run scoreboard players set @s lusi_ancient_debris_initialized 1

# 差分
execute as @a run scoreboard players operation @s lusi_ancient_debris_diff = @s lusi_ancient_debris
execute as @a run scoreboard players operation @s lusi_ancient_debris_diff -= @s lusi_ancient_debris_start

# Advancement
execute as @a if score @s lusi_ancient_debris_diff matches 1 run advancement grant @s only lusi:mining/ancient_debris_1
execute as @a if score @s lusi_ancient_debris_diff matches 5 run advancement grant @s only lusi:mining/ancient_debris_5
execute as @a if score @s lusi_ancient_debris_diff matches 10 run advancement grant @s only lusi:mining/ancient_debris_10
execute as @a if score @s lusi_ancient_debris_diff matches 25 run advancement grant @s only lusi:mining/ancient_debris_25
execute as @a if score @s lusi_ancient_debris_diff matches 50 run advancement grant @s only lusi:mining/ancient_debris_50
execute as @a if score @s lusi_ancient_debris_diff matches 100 run advancement grant @s only lusi:mining/ancient_debris_100
execute as @a if score @s lusi_ancient_debris_diff matches 250 run advancement grant @s only lusi:mining/ancient_debris_250
execute as @a if score @s lusi_ancient_debris_diff matches 500 run advancement grant @s only lusi:mining/ancient_debris_500