# 初期化
execute as @a run scoreboard players add @s lusi_minecart_initialized 0

# 初回値保存
execute as @a[scores={lusi_minecart_initialized=0}] run scoreboard players operation @s lusi_minecart_start = @s lusi_minecart
execute as @a[scores={lusi_minecart_initialized=0}] run scoreboard players set @s lusi_minecart_initialized 1

# 差分計算
execute as @a run scoreboard players operation @s lusi_minecart_diff = @s lusi_minecart
execute as @a run scoreboard players operation @s lusi_minecart_diff -= @s lusi_minecart_start

# 実績解除
execute as @a[scores={lusi_minecart_diff=100000..}] unless entity @s[advancements={lusi:movement/minecart_1000=true}] run advancement grant @s only lusi:movement/minecart_1000

execute as @a[scores={lusi_minecart_diff=300000..}] unless entity @s[advancements={lusi:movement/minecart_3000=true}] run advancement grant @s only lusi:movement/minecart_3000

execute as @a[scores={lusi_minecart_diff=380000..}] unless entity @s[advancements={lusi:movement/minecart_3000=true}] run advancement grant @s only lusi:movement/minecart_3000

execute as @a[scores={lusi_minecart_diff=600000..}] unless entity @s[advancements={lusi:movement/minecart_6000=true}] run advancement grant @s only lusi:movement/minecart_6000

execute as @a[scores={lusi_minecart_diff=1200000..}] unless entity @s[advancements={lusi:movement/minecart_12000=true}] run advancement grant @s only lusi:movement/minecart_12000

execute as @a[scores={lusi_minecart_diff=3000000..}] unless entity @s[advancements={lusi:movement/minecart_30000=true}] run advancement grant @s only lusi:movement/minecart_30000