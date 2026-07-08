# 初期化
execute as @a run scoreboard players add @s lusi_sneak_initialized 0

# 初回値保存
execute as @a[scores={lusi_sneak_initialized=0}] run scoreboard players operation @s lusi_sneak_start = @s lusi_sneak
execute as @a[scores={lusi_sneak_initialized=0}] run scoreboard players set @s lusi_sneak_initialized 1

# 差分計算
execute as @a run scoreboard players operation @s lusi_sneak_diff = @s lusi_sneak
execute as @a run scoreboard players operation @s lusi_sneak_diff -= @s lusi_sneak_start

# 5分程度（仮）
execute as @a[scores={lusi_sneak_diff=6000..}] unless entity @s[advancements={lusi:action/sneak_5min=true}] run advancement grant @s only lusi:action/sneak_5min

# 15分
execute as @a[scores={lusi_sneak_diff=18000..}] unless entity @s[advancements={lusi:action/sneak_15min=true}] run advancement grant @s only lusi:action/sneak_15min

# 30分
execute as @a[scores={lusi_sneak_diff=36000..}] unless entity @s[advancements={lusi:action/sneak_30min=true}] run advancement grant @s only lusi:action/sneak_30min

# 60分
execute as @a[scores={lusi_sneak_diff=72000..}] unless entity @s[advancements={lusi:action/sneak_60min=true}] run advancement grant @s only lusi:action/sneak_60min

# 120分
execute as @a[scores={lusi_sneak_diff=144000..}] unless entity @s[advancements={lusi:action/sneak_120min=true}] run advancement grant @s only lusi:action/sneak_120min