# 初期化
execute as @a unless score @s lusi_rare_fish_initialized matches 1 run scoreboard players operation @s lusi_rare_fish_start = @s lusi_rare_fish
execute as @a unless score @s lusi_rare_fish_initialized matches 1 run scoreboard players set @s lusi_rare_fish_initialized 1

# 差分
execute as @a run scoreboard players operation @s lusi_rare_fish_diff = @s lusi_rare_fish
execute as @a run scoreboard players operation @s lusi_rare_fish_diff -= @s lusi_rare_fish_start

# Advancement
execute as @a if score @s lusi_rare_fish_diff matches 1 run advancement grant @s only lusi:fishing/rare_fish_1
execute as @a if score @s lusi_rare_fish_diff matches 10 run advancement grant @s only lusi:fishing/rare_fish_10
execute as @a if score @s lusi_rare_fish_diff matches 25 run advancement grant @s only lusi:fishing/rare_fish_25
execute as @a if score @s lusi_rare_fish_diff matches 50 run advancement grant @s only lusi:fishing/rare_fish_50
execute as @a if score @s lusi_rare_fish_diff matches 100 run advancement grant @s only lusi:fishing/rare_fish_100
execute as @a if score @s lusi_rare_fish_diff matches 500 run advancement grant @s only lusi:fishing/rare_fish_500
execute as @a if score @s lusi_rare_fish_diff matches 1000 run advancement grant @s only lusi:fishing/rare_fish_1000
execute as @a if score @s lusi_rare_fish_diff matches 5000 run advancement grant @s only lusi:fishing/rare_fish_5000