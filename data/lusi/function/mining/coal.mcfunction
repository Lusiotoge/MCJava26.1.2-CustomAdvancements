# 初期化
execute as @a run scoreboard players add @s lusi_coal_initialized 0

# 合算
execute as @a run scoreboard players operation @s lusi_coal_total = @s lusi_coal
execute as @a run scoreboard players operation @s lusi_coal_total += @s lusi_deepslate_coal

# 初回のみ開始値を保存
execute as @a[scores={lusi_coal_initialized=0}] run scoreboard players operation @s lusi_coal_start = @s lusi_coal_total
execute as @a[scores={lusi_coal_initialized=0}] run scoreboard players set @s lusi_coal_initialized 1

# 差分計算
execute as @a run scoreboard players operation @s lusi_coal_diff = @s lusi_coal_total
execute as @a run scoreboard players operation @s lusi_coal_diff -= @s lusi_coal_start

# 実績解除
execute as @a[scores={lusi_coal_diff=10..}] unless entity @s[advancements={lusi:mining/coal_10=true}] run advancement grant @s only lusi:mining/coal_10
execute as @a[scores={lusi_coal_diff=50..}] unless entity @s[advancements={lusi:mining/coal_50=true}] run advancement grant @s only lusi:mining/coal_50
execute as @a[scores={lusi_coal_diff=100..}] unless entity @s[advancements={lusi:mining/coal_100=true}] run advancement grant @s only lusi:mining/coal_100
execute as @a[scores={lusi_coal_diff=500..}] unless entity @s[advancements={lusi:mining/coal_500=true}] run advancement grant @s only lusi:mining/coal_500
execute as @a[scores={lusi_coal_diff=1000..}] unless entity @s[advancements={lusi:mining/coal_1000=true}] run advancement grant @s only lusi:mining/coal_1000
execute as @a[scores={lusi_coal_diff=2500..}] unless entity @s[advancements={lusi:mining/coal_2500=true}] run advancement grant @s only lusi:mining/coal_2500
execute as @a[scores={lusi_coal_diff=5000..}] unless entity @s[advancements={lusi:mining/coal_5000=true}] run advancement grant @s only lusi:mining/coal_5000