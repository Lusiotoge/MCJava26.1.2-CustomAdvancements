# 初期化
execute as @a run scoreboard players add @s lusi_redstone_initialized 0

# 合算
execute as @a run scoreboard players operation @s lusi_redstone_total = @s lusi_redstone
execute as @a run scoreboard players operation @s lusi_redstone_total += @s lusi_deepslate_redstone

# 初回のみ開始値を保存
execute as @a[scores={lusi_redstone_initialized=0}] run scoreboard players operation @s lusi_redstone_start = @s lusi_redstone_total
execute as @a[scores={lusi_redstone_initialized=0}] run scoreboard players set @s lusi_redstone_initialized 1

# 差分計算
execute as @a run scoreboard players operation @s lusi_redstone_diff = @s lusi_redstone_total
execute as @a run scoreboard players operation @s lusi_redstone_diff -= @s lusi_redstone_start

# 実績解除
execute as @a[scores={lusi_redstone_diff=10..}] unless entity @s[advancements={lusi:mining/redstone_10=true}] run advancement grant @s only lusi:mining/redstone_10

execute as @a[scores={lusi_redstone_diff=50..}] unless entity @s[advancements={lusi:mining/redstone_50=true}] run advancement grant @s only lusi:mining/redstone_50

execute as @a[scores={lusi_redstone_diff=100..}] unless entity @s[advancements={lusi:mining/redstone_100=true}] run advancement grant @s only lusi:mining/redstone_100

execute as @a[scores={lusi_redstone_diff=500..}] unless entity @s[advancements={lusi:mining/redstone_500=true}] run advancement grant @s only lusi:mining/redstone_500

execute as @a[scores={lusi_redstone_diff=1000..}] unless entity @s[advancements={lusi:mining/redstone_1000=true}] run advancement grant @s only lusi:mining/redstone_1000

execute as @a[scores={lusi_redstone_diff=2500..}] unless entity @s[advancements={lusi:mining/redstone_2500=true}] run advancement grant @s only lusi:mining/redstone_2500

execute as @a[scores={lusi_redstone_diff=5000..}] unless entity @s[advancements={lusi:mining/redstone_5000=true}] run advancement grant @s only lusi:mining/redstone_5000