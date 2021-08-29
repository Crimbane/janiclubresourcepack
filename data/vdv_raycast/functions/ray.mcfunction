execute if score #hit vdvcasttemp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[tag=!vdvray,dx=0,sort=nearest] run function vdv_raycast:check_hit_entity
execute unless block ~ ~ ~ #vdv_raycast:blocks run function vdv_raycast:hit_block
scoreboard players add #distance vdvcasttemp 1
execute if score #distance vdvcasttemp matches 641.. run tellraw @s {"text":"That is too far!","color":"red","bold":true}
execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..640 positioned ^ ^ ^0.1 run function vdv_raycast:ray
