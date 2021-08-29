# Called by jc.spellbooks:main


scoreboard players set Timer jc.spellcooldown 0


execute if score @s jc.fireballcd matches 1.. run scoreboard players remove @s jc.fireballcd 1
execute if score @s jc.lightningcd matches 1.. run scoreboard players remove @s jc.lightningcd 1
execute if score @s jc.healingcd matches 1.. run scoreboard players remove @s jc.healingcd 1
execute if score @s jc.dragonbrethcd matches 1.. run scoreboard players remove @s jc.dragonbrethcd 1
execute if score @s jc.teleportcd matches 1.. run scoreboard players remove @s jc.teleportcd 1

scoreboard players operation Temp jc.fireballcd = @s jc.fireballcd
scoreboard players operation Temp jc.lightningcd = @s jc.lightningcd
scoreboard players operation Temp jc.healingcd = @s jc.healingcd
scoreboard players operation Temp jc.dragonbrethcd = @s jc.dragonbrethcd
scoreboard players operation Temp jc.teleportcd = @s jc.teleportcd

execute if entity @s[predicate=jc.spellbooks:holding_fireball_spell] run title @s actionbar [{"text":"Fireball Cooldown: ","color":"gold"},{"score":{"name":"Temp","objective":"jc.fireballcd"},"color":"white"},{"text":"s","color":"white"}]
execute if entity @s[predicate=jc.spellbooks:holding_lightning_spell] run title @s actionbar [{"text":"Lightning Cooldown: ","color":"yellow"},{"score":{"name":"Temp","objective":"jc.lightningcd"},"color":"white"},{"text":"s","color":"white"}]
execute if entity @s[predicate=jc.spellbooks:holding_healing_spell] run title @s actionbar [{"text":"Healing Cooldown: ","color":"dark_green"},{"score":{"name":"Temp","objective":"jc.healingcd"},"color":"white"},{"text":"s","color":"white"}]
execute if entity @s[predicate=jc.spellbooks:holding_dragonbreath_spell] run title @s actionbar [{"text":"Dragonbreath Cooldown: ","color":"light_purple"},{"score":{"name":"Temp","objective":"jc.dragonbrethcd"},"color":"white"},{"text":"s","color":"white"}]
execute if entity @s[predicate=jc.spellbooks:holding_teleport_spell] run title @s actionbar [{"text":"Teleport Cooldown: ","color":"blue"},{"score":{"name":"Temp","objective":"jc.teleportcd"},"color":"white"},{"text":"s","color":"white"}]
