# Add initial launch sounds and tag for new arrows
execute at @e[type=arrow,tag=!launched] run playsound entity.firework_rocket.launch ambient @a ~ ~ ~ 0.8 1
execute at @e[type=arrow,tag=!launched] run playsound entity.blaze.shoot ambient @a ~ ~ ~ 0.4 0.8
tag @e[type=arrow,tag=!launched] add launched

# Particle trail for all arrows
execute at @e[type=arrow] run particle firework ~ ~ ~ 0 0 0 0.01 1 force

# When arrow hits ground - spawn invisible silent powered creeper
execute at @e[type=arrow,nbt={inGround:1b}] run summon creeper ~ ~ ~ {ExplosionRadius:2b,Fuse:0,ignited:1b,Invisible:1b,Silent:1b}

# Remove arrows that hit something
kill @e[type=arrow,nbt={inGround:1b}]

