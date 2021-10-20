with blconwriter instance_destroy()
global.msc=0
global.msg[0]="Is this a joke^2?&Are you braindead^2?&RUN^2. INTO^2. THE.&friendliness pellets/"     
global.msg[1]="/"     
global.msg[2]="/"     
global.msg[3]="/"     
global.msg[4]="/"     
global.msg[5]="stop it/%%"
     

funwriter=instance_create(obj_blconwdflowey.x+40,obj_blconwdflowey.y+10,OBJ_INSTAWRITER)
sprite_index=spr_floweynice
image_index=1
image_speed=0
conversation=9.4
i=0
while i!=5
     {
     ddd= instance_find(obj_friendlypellet,i)
      ddd.x=ddd.blonicx
      ddd.y=ddd.blonicy
      ddd.attackyou=1
      i+=1
      }

