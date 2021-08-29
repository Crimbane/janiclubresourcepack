# Called by player


execute if score jc.spellbooks.dragonbreath jc.main matches 0 run scoreboard players set jc.spellbooks.dragonbreath jc.main 2
execute if score jc.spellbooks.dragonbreath jc.main matches 1 run scoreboard players set jc.spellbooks.dragonbreath jc.main 0
execute if score jc.spellbooks.dragonbreath jc.main matches 2 run scoreboard players set jc.spellbooks.dragonbreath jc.main 1

execute if score jc.spellbooks.dragonbreath jc.main matches 0 run tellraw @s [{"text":"Dragonbreath spell: ","color":"light_purple"},{"text":"Disabled","color":"dark_gray"}]
execute if score jc.spellbooks.dragonbreath jc.main matches 1 run tellraw @s [{"text":"Dragonbreath spell: ","color":"light_purple"},{"text":"Enabled","color":"white"}]
