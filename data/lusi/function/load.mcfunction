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
scoreboard objectives add lusi_coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add lusi_deepslate_coal minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add lusi_coal_total dummy

scoreboard objectives add lusi_coal_start dummy
scoreboard objectives add lusi_coal_diff dummy
scoreboard objectives add lusi_coal_initialized dummy

# 鉄採掘数
scoreboard objectives add lusi_iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add lusi_deepslate_iron minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add lusi_iron_total dummy

scoreboard objectives add lusi_iron_start dummy
scoreboard objectives add lusi_iron_diff dummy
scoreboard objectives add lusi_iron_initialized dummy

# 金採掘数
scoreboard objectives add lusi_gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add lusi_deepslate_gold minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add lusi_gold_total dummy

scoreboard objectives add lusi_gold_start dummy
scoreboard objectives add lusi_gold_diff dummy
scoreboard objectives add lusi_gold_initialized dummy

# 赤石採掘数
scoreboard objectives add lusi_redstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add lusi_deepslate_redstone minecraft.mined:minecraft.deepslate_redstone_ore

scoreboard objectives add lusi_redstone_total dummy
scoreboard objectives add lusi_redstone_start dummy
scoreboard objectives add lusi_redstone_diff dummy
scoreboard objectives add lusi_redstone_initialized dummy

# ラピス採掘数
scoreboard objectives add lusi_lapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add lusi_deepslate_lapis minecraft.mined:minecraft.deepslate_lapis_ore

scoreboard objectives add lusi_lapis_total dummy
scoreboard objectives add lusi_lapis_start dummy
scoreboard objectives add lusi_lapis_diff dummy
scoreboard objectives add lusi_lapis_initialized dummy

# ダイヤ採掘数
scoreboard objectives add lusi_diamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add lusi_deepslate_diamond minecraft.mined:minecraft.deepslate_diamond_ore

scoreboard objectives add lusi_diamond_total dummy
scoreboard objectives add lusi_diamond_start dummy
scoreboard objectives add lusi_diamond_diff dummy
scoreboard objectives add lusi_diamond_initialized dummy

# エメラルド採掘数
scoreboard objectives add lusi_emerald minecraft.mined:minecraft.emerald_ore
scoreboard objectives add lusi_deepslate_emerald minecraft.mined:minecraft.deepslate_emerald_ore

scoreboard objectives add lusi_emerald_total dummy
scoreboard objectives add lusi_emerald_start dummy
scoreboard objectives add lusi_emerald_diff dummy
scoreboard objectives add lusi_emerald_initialized dummy

# ネザークオーツ採掘数
scoreboard objectives add lusi_quartz minecraft.mined:minecraft.nether_quartz_ore

scoreboard objectives add lusi_quartz_start dummy
scoreboard objectives add lusi_quartz_diff dummy
scoreboard objectives add lusi_quartz_initialized dummy

# ネザライト採掘数
scoreboard objectives add lusi_ancient_debris minecraft.mined:minecraft.ancient_debris

scoreboard objectives add lusi_ancient_debris_start dummy
scoreboard objectives add lusi_ancient_debris_diff dummy
scoreboard objectives add lusi_ancient_debris_initialized dummy
