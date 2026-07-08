# 初期化
execute as @a run scoreboard players add @s lusi_stone_initialized 0

# 初回のみ開始値を保存
execute as @a[scores={lusi_stone_initialized=0}] run scoreboard players operation @s lusi_stone_start = @s lusi_stone
execute as @a[scores={lusi_stone_initialized=0}] run scoreboard players set @s lusi_stone_initialized 1

# 差分計算
execute as @a run scoreboard players operation @s lusi_stone_diff = @s lusi_stone
execute as @a run scoreboard players operation @s lusi_stone_diff -= @s lusi_stone_start

# 実績解除
execute as @a[scores={lusi_stone_diff=100..}] unless entity @s[advancements={lusi:mining/stone_100=true}] run advancement grant @s only lusi:mining/stone_100

execute as @a[scores={lusi_stone_diff=500..}] unless entity @s[advancements={lusi:mining/stone_500=true}] run advancement grant @s only lusi:mining/stone_500

execute as @a[scores={lusi_stone_diff=1000..}] unless entity @s[advancements={lusi:mining/stone_1000=true}] run advancement grant @s only lusi:mining/stone_1000

execute as @a[scores={lusi_stone_diff=5000..}] unless entity @s[advancements={lusi:mining/stone_5000=true}] run advancement grant @s only lusi:mining/stone_5000

execute as @a[scores={lusi_stone_diff=10000..}] unless entity @s[advancements={lusi:mining/stone_10000=true}] run advancement grant @s only lusi:mining/stone_10000

execute as @a[scores={lusi_stone_diff=25000..}] unless entity @s[advancements={lusi:mining/stone_25000=true}] run advancement grant @s only lusi:mining/stone_25000

execute as @a[scores={lusi_stone_diff=50000..}] unless entity @s[advancements={lusi:mining/stone_50000=true}] run advancement grant @s only lusi:mining/stone_50000

execute as @a[scores={lusi_stone_diff=100000..}] unless entity @s[advancements={lusi:mining/stone_100000=true}] run advancement grant @s only lusi:mining/stone_100000