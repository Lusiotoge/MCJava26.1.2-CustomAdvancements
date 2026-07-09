# 初期化
execute as @a unless score @s lusi_cod_initialized matches 1 run scoreboard players operation @s lusi_cod_start = @s lusi_cod
execute as @a unless score @s lusi_cod_initialized matches 1 run scoreboard players set @s lusi_cod_initialized 1

# 差分
execute as @a run scoreboard players operation @s lusi_cod_diff = @s lusi_cod
execute as @a run scoreboard players operation @s lusi_cod_diff -= @s lusi_cod_start

# Advancement
execute as @a if score @s lusi_cod_diff matches 1 run advancement grant @s only lusi:fishing/cod_1
execute as @a if score @s lusi_cod_diff matches 10 run advancement grant @s only lusi:fishing/cod_10
execute as @a if score @s lusi_cod_diff matches 25 run advancement grant @s only lusi:fishing/cod_25
execute as @a if score @s lusi_cod_diff matches 50 run advancement grant @s only lusi:fishing/cod_50
execute as @a if score @s lusi_cod_diff matches 100 run advancement grant @s only lusi:fishing/cod_100
execute as @a if score @s lusi_cod_diff matches 500 run advancement grant @s only lusi:fishing/cod_500
execute as @a if score @s lusi_cod_diff matches 1000 run advancement grant @s only lusi:fishing/cod_1000
execute as @a if score @s lusi_cod_diff matches 5000 run advancement grant @s only lusi:fishing/cod_5000