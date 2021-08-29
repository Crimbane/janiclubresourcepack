# Called by player


execute unless score jc.spellbooks.fireball jc.main matches 0.. run scoreboard players set jc.spellbooks.fireball jc.main 1
execute unless score jc.spellbooks.lightning jc.main matches 0.. run scoreboard players set jc.spellbooks.lightning jc.main 1
execute unless score jc.spellbooks.healing jc.main matches 0.. run scoreboard players set jc.spellbooks.healing jc.main 1
execute unless score jc.spellbooks.dragonbreath jc.main matches 0.. run scoreboard players set jc.spellbooks.dragonbreath jc.main 1
execute unless score jc.spellbooks.teleport jc.main matches 0.. run scoreboard players set jc.spellbooks.teleport jc.main 1


execute unless score jc.spellbooks jc.main matches 1 run scoreboard players set jc.spellbooks jc.main 2
execute if score jc.spellbooks jc.main matches 1 run scoreboard players set jc.spellbooks jc.main 0
execute if score jc.spellbooks jc.main matches 2 run scoreboard players set jc.spellbooks jc.main 1


execute if score jc.spellbooks jc.main matches 0 run tellraw @s {"text":"Spellbooks are now disabled.","color":"red"}
execute if score jc.spellbooks jc.main matches 1 run tellraw @s {"text":"Spellbooks are now enabled.\n","color":"green"}


execute if score jc.spellbooks jc.main matches 1 unless score jc.spellbooks.fireball jc.main matches 1 run tellraw @s [{"text":"Fireball Spell: ","color":"gold"},{"text":"Disabled","color":"dark_gray"}]
execute if score jc.spellbooks jc.main matches 1 if score jc.spellbooks.fireball jc.main matches 1 run tellraw @s [{"text":"Fireball Spell: ","color":"gold"},{"text":"Enabled","color":"white"}]
execute if score jc.spellbooks jc.main matches 1 unless score jc.spellbooks.lightning jc.main matches 1 run tellraw @s [{"text":"Lightning Spell: ","color":"yellow"},{"text":"Disabled","color":"dark_gray"}]
execute if score jc.spellbooks jc.main matches 1 if score jc.spellbooks.lightning jc.main matches 1 run tellraw @s [{"text":"Lightning Spell: ","color":"yellow"},{"text":"Enabled","color":"white"}]
execute if score jc.spellbooks jc.main matches 1 unless score jc.spellbooks.healing jc.main matches 1 run tellraw @s [{"text":"Healing Spell: ","color":"dark_green"},{"text":"Disabled","color":"dark_gray"}]
execute if score jc.spellbooks jc.main matches 1 if score jc.spellbooks.healing jc.main matches 1 run tellraw @s [{"text":"Healing Spell: ","color":"dark_green"},{"text":"Enabled","color":"white"}]
execute if score jc.spellbooks jc.main matches 1 unless score jc.spellbooks.dragonbreath jc.main matches 1 run tellraw @s [{"text":"Dragonbreath Spell: ","color":"light_purple"},{"text":"Disabled","color":"dark_gray"}]
execute if score jc.spellbooks jc.main matches 1 if score jc.spellbooks.dragonbreath jc.main matches 1 run tellraw @s [{"text":"Dragonbreath Spell: ","color":"light_purple"},{"text":"Enabled","color":"white"}]
execute if score jc.spellbooks jc.main matches 1 unless score jc.spellbooks.teleport jc.main matches 1 run tellraw @s [{"text":"Teleport Spell: ","color":"blue"},{"text":"Disabled","color":"dark_gray"}]
execute if score jc.spellbooks jc.main matches 1 if score jc.spellbooks.teleport jc.main matches 1 run tellraw @s [{"text":"Teleport Spell: ","color":"blue"},{"text":"Enabled","color":"white"}]
