# Called by jc.spellbooks:spells


scoreboard players set @s jc.healingcd 5
playsound minecraft:entity.player.levelup player @a ~ ~ ~

summon potion ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_healing",CustomPotionEffects:[{Id:6b,Amplifier:3b,Duration:200,ShowParticles:1b}]}}}
summon area_effect_cloud ~ ~ ~ {Radius:3f,Duration:60,DurationOnUse:0,WaitTime:1,Potion:"minecraft:strong_healing"}
