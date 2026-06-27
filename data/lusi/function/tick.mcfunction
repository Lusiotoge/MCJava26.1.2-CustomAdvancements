# 初期化
execute as @a run scoreboard players add @s lusi_initialized 0

# 初回のみ開始値を保存
execute as @a[scores={lusi_initialized=0}] run scoreboard players operation @s lusi_walk_start = @s lusi_walk
execute as @a[scores={lusi_initialized=0}] run scoreboard players set @s lusi_initialized 1

# 差分計算
execute as @a run scoreboard players operation @s lusi_walk_diff = @s lusi_walk
execute as @a run scoreboard players operation @s lusi_walk_diff -= @s lusi_walk_start

# 実績
execute as @a[scores={lusi_walk_diff=2500000..}] unless entity @s[advancements={lusi:movement/walk_25000=true}] run advancement grant @s only lusi:movement/walk_25000
execute as @a[scores={lusi_walk_diff=5000000..}] unless entity @s[advancements={lusi:movement/walk_25000=true}] run advancement grant @s only lusi:movement/walk_50000
execute as @a[scores={lusi_walk_diff=10000000..}] unless entity @s[advancements={lusi:movement/walk_25000=true}] run advancement grant @s only lusi:movement/walk_100000
execute as @a[scores={lusi_walk_diff=250000000..}] unless entity @s[advancements={lusi:movement/walk_25000=true}] run advancement grant @s only lusi:movement/walk_2500000
execute as @a[scores={lusi_walk_diff=1000000000..}] unless entity @s[advancements={lusi:movement/walk_25000=true}] run advancement grant @s only lusi:movement/walk_10000000

# 次tick予約
schedule function lusi:tick 1t replace