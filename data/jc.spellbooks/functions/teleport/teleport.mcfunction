# Called by jc.spellbooks:spells


scoreboard players set @s jc.teleportcd 3


scoreboard players set @s jc.main 2
execute anchored eyes run function vdv_raycast:start_ray
