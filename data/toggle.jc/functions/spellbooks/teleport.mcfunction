# Called by player


execute if score jc.spellbooks.teleport jc.main matches 0 run scoreboard players set jc.spellbooks.teleport jc.main 2
execute if score jc.spellbooks.teleport jc.main matches 1 run scoreboard players set jc.spellbooks.teleport jc.main 0
execute if score jc.spellbooks.teleport jc.main matches 2 run scoreboard players set jc.spellbooks.teleport jc.main 1

execute if score jc.spellbooks.teleport jc.main matches 0 run tellraw @s [{"text":"Teleport spell: ","color":"blue"},{"text":"Disabled","color":"dark_gray"}]
execute if score jc.spellbooks.teleport jc.main matches 1 run tellraw @s [{"text":"Teleport spell: ","color":"blue"},{"text":"Enabled","color":"white"}]
