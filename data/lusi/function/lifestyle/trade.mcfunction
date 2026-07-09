# 初期化
execute as @a unless score @s lusi_trade_initialized matches 1 run scoreboard players operation @s lusi_trade_start = @s lusi_trade
execute as @a unless score @s lusi_trade_initialized matches 1 run scoreboard players set @s lusi_trade_initialized 1

# 差分
execute as @a run scoreboard players operation @s lusi_trade_diff = @s lusi_trade
execute as @a run scoreboard players operation @s lusi_trade_diff -= @s lusi_trade_start

# Advancement
execute as @a if score @s lusi_trade_diff matches 1 run advancement grant @s only lusi:lifestyle/trade_1
execute as @a if score @s lusi_trade_diff matches 10 run advancement grant @s only lusi:lifestyle/trade_10
execute as @a if score @s lusi_trade_diff matches 25 run advancement grant @s only lusi:lifestyle/trade_25
execute as @a if score @s lusi_trade_diff matches 50 run advancement grant @s only lusi:lifestyle/trade_50
execute as @a if score @s lusi_trade_diff matches 100 run advancement grant @s only lusi:lifestyle/trade_100
execute as @a if score @s lusi_trade_diff matches 500 run advancement grant @s only lusi:lifestyle/trade_500
execute as @a if score @s lusi_trade_diff matches 1000 run advancement grant @s only lusi:lifestyle/trade_1000
execute as @a if score @s lusi_trade_diff matches 5000 run advancement grant @s only lusi:lifestyle/trade_5000