# 初回のみ開始値保存
execute as @a unless score @s lusi_zombie_initialized matches 1 run scoreboard players operation @s lusi_zombie_start = @s lusi_zombie
execute as @a unless score @s lusi_zombie_initialized matches 1 run scoreboard players set @s lusi_zombie_initialized 1

# 差分計算
execute as @a run scoreboard players operation @s lusi_zombie_diff = @s lusi_zombie
execute as @a run scoreboard players operation @s lusi_zombie_diff -= @s lusi_zombie_start

# 実績解除
execute as @a if score @s lusi_zombie_diff matches 100 run advancement grant @s only lusi:combat/zombie_100
execute as @a if score @s lusi_zombie_diff matches 200 run advancement grant @s only lusi:combat/zombie_200
execute as @a if score @s lusi_zombie_diff matches 300 run advancement grant @s only lusi:combat/zombie_300
execute as @a if score @s lusi_zombie_diff matches 400 run advancement grant @s only lusi:combat/zombie_400
execute as @a if score @s lusi_zombie_diff matches 500 run advancement grant @s only lusi:combat/zombie_500
execute as @a if score @s lusi_zombie_diff matches 1000 run advancement grant @s only lusi:combat/zombie_1000
execute as @a if score @s lusi_zombie_diff matches 2500 run advancement grant @s only lusi:combat/zombie_2500
execute as @a if score @s lusi_zombie_diff matches 5000 run advancement grant @s only lusi:combat/zombie_5000