# クラフト回数を1増やす
scoreboard players add @s lusi_crafting 1

# 実績判定
function lusi:crafting/check

# listenerを再利用できるようにする
advancement revoke @s only lusi:crafting/listener