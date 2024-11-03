# Check if player is in sunlight and not in creative/spectator mode
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate vampire:in_sunlight run function vampire:burn_vampire
