if conversation=1 and instance_exists(obj_dialoguer)=false then
   {
   conversation=2
   with( obj_toroverworld3 )
   {
		x -= 10
		rsprite = spr_toriel_handhold_r
		usprite = spr_toriel_handhold_u
		sprite_index = spr_toriel_handhold_r
   }
   obj_mainchara.visible=0
   with obj_toroverworld3 path_start(path_torielwalk20_2,2,0,false)
   with obj_mainchara path_start(path_torielwalk20_2,2,0,false)
   }
   
if instance_exists(obj_toroverworld3) and conversation=2
if obj_toroverworld3.path_position=1 then
   {
   obj_toroverworld3.usprite=spr_toriel_u
   obj_toroverworld3.rsprite=spr_toriel_r
   obj_mainchara.x+=33
   alarm[2]=1
   obj_toroverworld3.y-=1
   obj_toroverworld3.facing=2
   obj_toroverworld3.direction=90
   global.facing=2
   obj_mainchara.y-=3
   //obj_mainchara.visible=1
   global.msg[0]="* A room of your own.&* I hope you like it!/%%"
   instance_create(0,0,obj_dialoguer)
   conversation=3
   }

if conversation=3 and instance_exists(obj_dialoguer)=false
   {
   alarm[5]=90
   obj_toroverworld3.sprite_index=spr_toriel_ruffle
   obj_mainchara.visible=0
   obj_toroverworld3.usprite=spr_toriel_ruffle
   obj_toroverworld3.dsprite=spr_toriel_ruffle	
   alarm[1]=10
   conversation=4
   }

if conversation=5 and instance_exists(obj_dialoguer)=false then
   {
   obj_toroverworld3.usprite=spr_toriel_u
   obj_toroverworld3.dsprite=spr_toriel_d
   global.interact=0
   conversation=2
   with obj_toroverworld3 path_start(path_torielwalk20,6,0,false)
   global.plot=19
   instance_destroy()
   }

