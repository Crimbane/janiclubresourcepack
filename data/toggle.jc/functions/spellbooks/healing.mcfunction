# Called by player


execute if score jc.spellbooks.healing jc.main matches 0 run scoreboard players set jc.spellbooks.healing jc.main 2
execute if score jc.spellbooks.healing jc.main matches 1 run scoreboard players set jc.spellbooks.healing jc.main 0
execute if score jc.spellbooks.healing jc.main matches 2 run scoreboard players set jc.spellbooks.healing jc.main 1

execute if score jc.spellbooks.healing jc.main matches 0 run tellraw @s [{"text":"Healing spell: ","color":"dark_green"},{"text":"Disabled","color":"dark_gray"}]
execute if score jc.spellbooks.healing jc.main matches 1 run tellraw @s [{"text":"Healing spell: ","color":"dark_green"},{"text":"Enabled","color":"white"}]
