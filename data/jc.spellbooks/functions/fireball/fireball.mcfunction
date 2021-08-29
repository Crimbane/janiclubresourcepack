# Called by jc.spellbooks:spells


scoreboard players set @s jc.fireballcd 1
playsound minecraft:entity.generic.extinguish_fire player @a ~ ~ ~

execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^1 {Tags:["fireball_angle"]}
execute anchored eyes run summon minecraft:fireball ^ ^-0.2 ^0.1 {ExplosionPower:0,Tags:["fireball_spell","new"],Motion:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d]}

data modify entity @e[type=fireball,tag=new,tag=fireball_spell,limit=1,distance=..8] Owner set from entity @s UUID

data modify entity @e[type=fireball,tag=new,tag=fireball_spell,limit=1,distance=..8] Motion set from entity @e[type=area_effect_cloud,tag=fireball_angle,limit=1] Pos
execute store result entity @e[type=fireball,tag=new,tag=fireball_spell,limit=1,distance=..8] power[0] double 0.001 run data get entity @e[type=area_effect_cloud,tag=fireball_angle,limit=1] Pos[0] 100
execute store result entity @e[type=fireball,tag=new,tag=fireball_spell,limit=1,distance=..8] power[1] double 0.001 run data get entity @e[type=area_effect_cloud,tag=fireball_angle,limit=1] Pos[1] 100
execute store result entity @e[type=fireball,tag=new,tag=fireball_spell,limit=1,distance=..8] power[2] double 0.001 run data get entity @e[type=area_effect_cloud,tag=fireball_angle,limit=1] Pos[2] 100

kill @e[type=area_effect_cloud,tag=fireball_angle]
tag @e[type=fireball,tag=new,tag=fireball_spell,distance=..8] remove new
