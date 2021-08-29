# Called by player


execute if score jc.spellbooks.fireball jc.main matches 0 run scoreboard players set jc.spellbooks.fireball jc.main 2
execute if score jc.spellbooks.fireball jc.main matches 1 run scoreboard players set jc.spellbooks.fireball jc.main 0
execute if score jc.spellbooks.fireball jc.main matches 2 run scoreboard players set jc.spellbooks.fireball jc.main 1

execute if score jc.spellbooks.fireball jc.main matches 0 run tellraw @s [{"text":"Fireball spell: ","color":"gold"},{"text":"Disabled","color":"dark_gray"}]
execute if score jc.spellbooks.fireball jc.main matches 1 run tellraw @s [{"text":"Fireball spell: ","color":"gold"},{"text":"Enabled","color":"white"}]
