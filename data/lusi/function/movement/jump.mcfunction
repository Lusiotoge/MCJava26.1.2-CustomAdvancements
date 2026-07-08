# 初期化
execute as @a run scoreboard players add @s lusi_jump_initialized 0

# 初回値保存
execute as @a[scores={lusi_jump_initialized=0}] run scoreboard players operation @s lusi_jump_start = @s lusi_jump
execute as @a[scores={lusi_jump_initialized=0}] run scoreboard players set @s lusi_jump_initialized 1

# 差分計算
execute as @a run scoreboard players operation @s lusi_jump_diff = @s lusi_jump
execute as @a run scoreboard players operation @s lusi_jump_diff -= @s lusi_jump_start


# 1,000回
execute as @a[scores={lusi_jump_diff=1000..}] unless entity @s[advancements={lusi:action/jump_1000=true}] run advancement grant @s only lusi:action/jump_1000

# 5,000回
execute as @a[scores={lusi_jump_diff=5000..}] unless entity @s[advancements={lusi:action/jump_5000=true}] run advancement grant @s only lusi:action/jump_5000

# 10,000回
execute as @a[scores={lusi_jump_diff=10000..}] unless entity @s[advancements={lusi:action/jump_10000=true}] run advancement grant @s only lusi:action/jump_10000

# 25,000回
execute as @a[scores={lusi_jump_diff=25000..}] unless entity @s[advancements={lusi:action/jump_25000=true}] run advancement grant @s only lusi:action/jump_25000

# 50,000回
execute as @a[scores={lusi_jump_diff=50000..}] unless entity @s[advancements={lusi:action/jump_50000=true}] run advancement grant @s only lusi:action/jump_50000