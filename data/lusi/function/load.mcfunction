# 歩行
scoreboard objectives add lusi_walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add lusi_walk_start dummy
scoreboard objectives add lusi_walk_diff dummy
scoreboard objectives add lusi_initialized dummy
schedule function lusi:tick 1t replace

# 泳ぎ
scoreboard objectives add lusi_swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add lusi_swim_start dummy
scoreboard objectives add lusi_swim_diff dummy
scoreboard objectives add lusi_swim_initialized dummy

# トロッコ
scoreboard objectives add lusi_minecart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add lusi_minecart_start dummy
scoreboard objectives add lusi_minecart_diff dummy
scoreboard objectives add lusi_minecart_initialized dummy

# エリトラ飛行
scoreboard objectives add lusi_aviate minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add lusi_aviate_start dummy
scoreboard objectives add lusi_aviate_diff dummy
scoreboard objectives add lusi_aviate_initialized dummy

# ジャンプ回数
scoreboard objectives add lusi_jump minecraft.custom:minecraft.jump
scoreboard objectives add lusi_jump_start dummy
scoreboard objectives add lusi_jump_diff dummy
scoreboard objectives add lusi_jump_initialized dummy

# スニーク時間
scoreboard objectives add lusi_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add lusi_sneak_start dummy
scoreboard objectives add lusi_sneak_diff dummy
scoreboard objectives add lusi_sneak_initialized dummy

# 石採掘数
scoreboard objectives add lusi_stone minecraft.mined:minecraft.stone
scoreboard objectives add lusi_stone_start dummy
scoreboard objectives add lusi_stone_diff dummy
scoreboard objectives add lusi_stone_initialized dummy

# 深層岩採掘数
scoreboard objectives add lusi_stone minecraft.mined:minecraft.stone
scoreboard objectives add lusi_stone_start dummy
scoreboard objectives add lusi_stone_diff dummy
scoreboard objectives add lusi_stone_initialized dummy

# 石炭採掘数
# 鉄採掘数
# 金採掘数
# 赤石採掘数
# ラピス採掘数
# ダイヤ採掘数
# エメラルド採掘数
# クオーツ採掘数
# ネザライト採掘数
