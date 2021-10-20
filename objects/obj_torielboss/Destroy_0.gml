script_execute(scr_monsterdefeat,0,0,0,0,0);
global.monster[0]=1
with obj_battlecontroller visible=0
global.xp+=500
scr_levelup()
with obj_hpname instance_destroy()
with obj_battlebg instance_destroy()
with obj_btparent instance_destroy()
with obj_borderparent instance_destroy()

