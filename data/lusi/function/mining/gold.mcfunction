# 初期化
execute as @a run scoreboard players add @s lusi_gold_initialized 0

# 合算
execute as @a run scoreboard players operation @s lusi_gold_total = @s lusi_gold
execute as @a run scoreboard players operation @s lusi_gold_total += @s lusi_deepslate_gold

# 初回のみ開始値を保存
execute as @a[scores={lusi_gold_initialized=0}] run scoreboard players operation @s lusi_gold_start = @s lusi_gold_total
execute as @a[scores={lusi_gold_initialized=0}] run scoreboard players set @s lusi_gold_initialized 1

# 差分計算
execute as @a run scoreboard players operation @s lusi_gold_diff = @s lusi_gold_total
execute as @a run scoreboard players operation @s lusi_gold_diff -= @s lusi_gold_start

# 実績解除
execute as @a[scores={lusi_gold_diff=5..}] unless entity @s[advancements={lusi:mining/gold_5=true}] run advancement grant @s only lusi:mining/gold_5
execute as @a[scores={lusi_gold_diff=25..}] unless entity @s[advancements={lusi:mining/gold_25=true}] run advancement grant @s only lusi:mining/gold_25
execute as @a[scores={lusi_gold_diff=50..}] unless entity @s[advancements={lusi:mining/gold_50=true}] run advancement grant @s only lusi:mining/gold_50
execute as @a[scores={lusi_gold_diff=100..}] unless entity @s[advancements={lusi:mining/gold_100=true}] run advancement grant @s only lusi:mining/gold_100
execute as @a[scores={lusi_gold_diff=250..}] unless entity @s[advancements={lusi:mining/gold_250=true}] run advancement grant @s only lusi:mining/gold_250
execute as @a[scores={lusi_gold_diff=500..}] unless entity @s[advancements={lusi:mining/gold_500=true}] run advancement grant @s only lusi:mining/gold_500