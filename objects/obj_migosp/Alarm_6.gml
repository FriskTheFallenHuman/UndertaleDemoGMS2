 if global.monster[0] + global.monster[1] + global.monster[2] - global.monster[myself] = 0 then mercymod=100
    if mercymod>0 then { sprite_index=spr_migosphappy; image_speed=0.1 }
  
      blcon = instance_create(x+sprite_width-8,ystart,obj_blconsm)  
  mycommand = round(random(100))
  if mercymod<0 then
  {
  if mycommand >= 0 and mycommand < 20 then global.msg[0] = "FILTHY&SINGLE&MINDER.."
  if mycommand >= 20 and mycommand < 40 then global.msg[0] = "OBEY&THE&OVERMIND&.."
  if mycommand >= 40 and mycommand < 60 then global.msg[0] = "LEGION!&WE&ARE&LEGION"
  if mycommand >= 60 and mycommand <= 80 then global.msg[0] = "HEED&THE&SWARM"
  if mycommand >= 80 and mycommand <= 100 then global.msg[0] = "IN&UNISON,&NOW"
  if whatiheard = 1 or whatiheard=3 then 
      { 
     global.msg[0] = "I&DON'T&CARE."
      }
  }
  if mercymod>0 then
  {
  if mycommand >= 0 and mycommand < 20 then global.msg[0] = "Bein' me&is the&best!"
  if mycommand >= 20 and mycommand < 40 then global.msg[0] = "La la~&Just be&yourself~"
  if mycommand >= 40 and mycommand < 60 then global.msg[0] = "Nothin'&like&alone&time!"
  if mycommand >= 60 and mycommand <= 80 then global.msg[0] = "Mmm, cha&cha cha!"
  if mycommand >= 80 and mycommand <= 100 then global.msg[0] = "Swing&your&arms,&baby"
  if whatiheard = 1 or whatiheard=3 then 
      { 
     global.msg[0] = "Hiya~"
      }
  }
 
     
global.msg[1] = "%%%"
global.typer = 2
blconwd = instance_create(blcon.x+15,blcon.y+10,OBJ_NOMSCWRITER)
    
    
global.border = 3
obj_heart.x = round((global.idealborder[0] + global.idealborder[1])/2) - 8
obj_heart.y = round((global.idealborder[2] + global.idealborder[3])/2) - 8


