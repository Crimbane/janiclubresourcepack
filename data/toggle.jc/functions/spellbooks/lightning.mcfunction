# Called by player


execute if score jc.spellbooks.lightning jc.main matches 0 run scoreboard players set jc.spellbooks.lightning jc.main 2
execute if score jc.spellbooks.lightning jc.main matches 1 run scoreboard players set jc.spellbooks.lightning jc.main 0
execute if score jc.spellbooks.lightning jc.main matches 2 run scoreboard players set jc.spellbooks.lightning jc.main 1

execute if score jc.spellbooks.lightning jc.main matches 0 run tellraw @s [{"text":"Lightning spell: ","color":"yellow"},{"text":"Disabled","color":"dark_gray"}]
execute if score jc.spellbooks.lightning jc.main matches 1 run tellraw @s [{"text":"Lightning spell: ","color":"yellow"},{"text":"Enabled","color":"white"}]
