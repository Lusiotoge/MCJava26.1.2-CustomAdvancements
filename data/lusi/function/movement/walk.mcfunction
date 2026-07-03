execute as @a run scoreboard players add @s lusi_initialized 0

execute as @a[scores={lusi_initialized=0}] run scoreboard players operation @s lusi_walk_start = @s lusi_walk
execute as @a[scores={lusi_initialized=0}] run scoreboard players set @s lusi_initialized 1

execute as @a run scoreboard players operation @s lusi_walk_diff = @s lusi_walk
execute as @a run scoreboard players operation @s lusi_walk_diff -= @s lusi_walk_start

execute as @a[scores={lusi_walk_diff=2500000..}] unless entity @s[advancements={lusi:movement/walk_25000=true}] run advancement grant @s only lusi:movement/walk_25000