# Check for swooping phantoms and run effects
execute as @e[type=phantom] at @s if predicate exploding_phantoms:phantom_attack run function exploding_phantoms:swooping_effects

# Check for explosion condition
execute as @e[type=phantom] at @s if entity @a[distance=..3] if predicate exploding_phantoms:phantom_attack run function exploding_phantoms:explode
