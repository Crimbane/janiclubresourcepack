# Called by jc.spellbooks:main


execute if score jc.spellbooks.fireball jc.main matches 1 if entity @s[predicate=jc.spellbooks:holding_fireball_spell] unless score @s jc.fireballcd matches 1.. run function jc.spellbooks:fireball/fireball
execute if score jc.spellbooks.lightning jc.main matches 1 if entity @s[predicate=jc.spellbooks:holding_lightning_spell] unless score @s jc.lightningcd matches 1.. run function jc.spellbooks:lightning/lightning
execute if score jc.spellbooks.healing jc.main matches 1 if entity @s[predicate=jc.spellbooks:holding_healing_spell] unless score @s jc.healingcd matches 1.. run function jc.spellbooks:healing/healing
execute if score jc.spellbooks.dragonbreath jc.main matches 1 if entity @s[predicate=jc.spellbooks:holding_dragonbreath_spell] unless score @s jc.dragonbrethcd matches 1.. run function jc.spellbooks:dragonbreath/dragonbreath
execute if score jc.spellbooks.teleport jc.main matches 1 if entity @s[predicate=jc.spellbooks:holding_teleport_spell] unless score @s jc.teleportcd matches 1.. run function jc.spellbooks:teleport/teleport
