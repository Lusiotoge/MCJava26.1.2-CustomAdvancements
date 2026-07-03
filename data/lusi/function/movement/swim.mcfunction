execute as @a run scoreboard players add @s lusi_swim_initialized 0

execute as @a[scores={lusi_swim_initialized=0}] run scoreboard players operation @s lusi_swim_start = @s lusi_swim
execute as @a[scores={lusi_swim_initialized=0}] run scoreboard players set @s lusi_swim_initialized 1

execute as @a run scoreboard players operation @s lusi_swim_diff = @s lusi_swim
execute as @a run scoreboard players operation @s lusi_swim_diff -= @s lusi_swim_start

execute as @a[scores={lusi_swim_diff=1000000..}] unless entity @s[advancements={lusi:movement/swim_10000=true}] run advancement grant @s only lusi:movement/swim_10000