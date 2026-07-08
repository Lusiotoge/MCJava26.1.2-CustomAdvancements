# 初期化
execute as @a run scoreboard players add @s lusi_iron_initialized 0

# 合算
execute as @a run scoreboard players operation @s lusi_iron_total = @s lusi_iron
execute as @a run scoreboard players operation @s lusi_iron_total += @s lusi_deepslate_iron

# 初回のみ開始値を保存
execute as @a[scores={lusi_iron_initialized=0}] run scoreboard players operation @s lusi_iron_start = @s lusi_iron_total
execute as @a[scores={lusi_iron_initialized=0}] run scoreboard players set @s lusi_iron_initialized 1

# 差分計算
execute as @a run scoreboard players operation @s lusi_iron_diff = @s lusi_iron_total
execute as @a run scoreboard players operation @s lusi_iron_diff -= @s lusi_iron_start

# 実績解除
execute as @a[scores={lusi_iron_diff=10..}] unless entity @s[advancements={lusi:mining/iron_10=true}] run advancement grant @s only lusi:mining/iron_10

execute as @a[scores={lusi_iron_diff=50..}] unless entity @s[advancements={lusi:mining/iron_50=true}] run advancement grant @s only lusi:mining/iron_50

execute as @a[scores={lusi_iron_diff=100..}] unless entity @s[advancements={lusi:mining/iron_100=true}] run advancement grant @s only lusi:mining/iron_100

execute as @a[scores={lusi_iron_diff=500..}] unless entity @s[advancements={lusi:mining/iron_500=true}] run advancement grant @s only lusi:mining/iron_500

execute as @a[scores={lusi_iron_diff=1000..}] unless entity @s[advancements={lusi:mining/iron_1000=true}] run advancement grant @s only lusi:mining/iron_1000

execute as @a[scores={lusi_iron_diff=2500..}] unless entity @s[advancements={lusi:mining/iron_2500=true}] run advancement grant @s only lusi:mining/iron_2500

execute as @a[scores={lusi_iron_diff=5000..}] unless entity @s[advancements={lusi:mining/iron_5000=true}] run advancement grant @s only lusi:mining/iron_5000