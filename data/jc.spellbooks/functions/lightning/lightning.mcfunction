# Called by jc.spellbooks:spells


scoreboard players set @s jc.lightningcd 2


scoreboard players set @s jc.main 1
execute anchored eyes run function vdv_raycast:start_ray
