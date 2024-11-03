# Visual and particle effects
particle smoke ~ ~1 ~ 0.2 0.5 0.2 0.01 5 force
particle ash ~ ~1.5 ~ 0.3 0.5 0.3 0.02 5 force
particle flame ~ ~1 ~ 0.2 0.5 0.2 0.01 3 force
title @s actionbar {"text":"☀ Burning in sunlight! ☀","color":"red"}

# Add to timer
scoreboard players add @s vampireTimer 1

# Fire sound effects
execute if score @s vampireTimer matches 5 run playsound block.fire.ambient player @s ~ ~ ~ 0.8 1
execute if score @s vampireTimer matches 15 run playsound block.fire.ambient player @s ~ ~ ~ 0.8 0.9

# Direct damage at 10 ticks
execute if score @s vampireTimer matches 10 run playsound entity.player.hurt_on_fire player @s ~ ~ ~ 0.3 1
execute if score @s vampireTimer matches 10 run damage @s 1 minecraft:on_fire

# Reset timer at 20 ticks
execute if score @s vampireTimer matches 20 run particle large_smoke ~ ~1 ~ 0.4 0.7 0.4 0.05 15 force
execute if score @s vampireTimer matches 20 run scoreboard players set @s vampireTimer 0

# Apply vampire weakness effects
effect give @s weakness 2 0 true
effect give @s mining_fatigue 2 0 true
effect give @s slowness 2 0 true
