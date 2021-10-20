 blcon = instance_create(x+sprite_width-8,ystart+8,obj_blconsm)  
  mycommand = round(random(100))
  if global.turn=0 then mycommand=10
  if global.turn=1 then mycommand=90
  if mycommand >= 0 and mycommand < 33 then global.msg[0] = "You're&rather&slow."
  if mycommand >= 33 and mycommand < 66 then global.msg[0] = "Come on,&let's go."
  if mycommand >= 66 and mycommand <= 100 then global.msg[0] = "Hurry&up..."
  if global.turn=3 then global.msg[0] = "Want to&go on&a walk?"
  if whatiheard = 2 and mercymod=21 then
     { 
     global.msg[0] = "Pet...&me..."
      }
   if whatiheard = 2 and mercymod=20 then
     { 
     global.msg[0] = "Oh boy!&Oh boy!&Oh boy!&Oh boy!"
     mercymod=21
      }
   if whatiheard=5 and mercymod=100 then
      {
      global.msg[0]="Ahhhh,&humans&are&nice."
      global.monsterdef[myself]=-30
      }
 
     
global.msg[1] = "%%%"
global.typer = 2
blconwd = instance_create(blcon.x+15,blcon.y+10,OBJ_NOMSCWRITER)
    
    
global.border = 6
obj_heart.x = round((global.idealborder[0] + global.idealborder[1])/2) - 8
obj_heart.y = round((global.idealborder[2] + global.idealborder[3])/2) - 8


