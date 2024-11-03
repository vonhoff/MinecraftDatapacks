# Visual and particle effects
particle smoke ~ ~1 ~ 0.2 0.5 0.2 0.01 5 force
particle flame ~ ~1 ~ 0.4 0.7 0.4 0.05 15 force

# Add to timer
scoreboard players add @s vampireTimer 1

# Sound effects
execute if score @s vampireTimer matches 5 run playsound block.fire.ambient player @s ~ ~ ~ 1 1
execute if score @s vampireTimer matches 15 run playsound block.fire.ambient player @s ~ ~ ~ 1 0.5

# Apply damage every 20 ticks
execute if score @s vampireTimer matches 20 run effect give @s wither 2 0 true
execute if score @s vampireTimer matches 20 run playsound minecraft:entity.player.hurt_on_fire player @s ~ ~ ~ 1 1
execute if score @s vampireTimer matches 20 run particle large_smoke ~ ~1 ~ 0.4 0.7 0.4 0.05 15 force
execute if score @s vampireTimer matches 20 run scoreboard players set @s vampireTimer 0

# Apply vampire weakness effects
effect give @s weakness 2 0 true
effect give @s mining_fatigue 2 0 true
effect give @s slowness 2 0 true
