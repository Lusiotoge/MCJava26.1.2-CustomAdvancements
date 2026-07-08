# 初期化
execute as @a run scoreboard players add @s lusi_aviate_initialized 0

# 初回値保存
execute as @a[scores={lusi_aviate_initialized=0}] run scoreboard players operation @s lusi_aviate_start = @s lusi_aviate
execute as @a[scores={lusi_aviate_initialized=0}] run scoreboard players set @s lusi_aviate_initialized 1

# 差分計算
execute as @a run scoreboard players operation @s lusi_aviate_diff = @s lusi_aviate
execute as @a run scoreboard players operation @s lusi_aviate_diff -= @s lusi_aviate_start

# 実績解除
execute as @a[scores={lusi_aviate_diff=300000..}] unless entity @s[advancements={lusi:movement/aviate_3000=true}] run advancement grant @s only lusi:movement/aviate_3000

execute as @a[scores={lusi_aviate_diff=600000..}] unless entity @s[advancements={lusi:movement/aviate_6000=true}] run advancement grant @s only lusi:movement/aviate_6000

execute as @a[scores={lusi_aviate_diff=1000000..}] unless entity @s[advancements={lusi:movement/aviate_10000=true}] run advancement grant @s only lusi:movement/aviate_10000

execute as @a[scores={lusi_aviate_diff=1600000..}] unless entity @s[advancements={lusi:movement/aviate_16000=true}] run advancement grant @s only lusi:movement/aviate_16000

execute as @a[scores={lusi_aviate_diff=3200000..}] unless entity @s[advancements={lusi:movement/aviate_32000=true}] run advancement grant @s only lusi:movement/aviate_32000