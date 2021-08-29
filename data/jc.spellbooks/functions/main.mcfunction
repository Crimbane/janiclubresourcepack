# Called by jc.main:tick


scoreboard players add Timer jc.spellcooldown 1
execute if score Timer jc.spellcooldown matches 5 as @a run function jc.spellbooks:cooldown_display
execute if score Timer jc.spellcooldown matches 10 as @a run function jc.spellbooks:cooldown_display
execute if score Timer jc.spellcooldown matches 15 as @a run function jc.spellbooks:cooldown_display
execute if score Timer jc.spellcooldown matches 20.. as @a run function jc.spellbooks:cooldown

execute as @a[scores={jc.spellused=1..}] at @s run function jc.spellbooks:spells
execute as @a[scores={jc.spellused=1..}] at @s run scoreboard players set @s jc.spellused 0
