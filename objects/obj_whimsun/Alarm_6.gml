  blcon = instance_create(x+sprite_width-8,ystart,obj_blconsm)  
  mycommand = round(random(100))
  if mycommand >= 0 and mycommand < 30 then global.msg[0] = "I'm&sorry..."
  if mycommand >= 30 and mycommand < 50 then global.msg[0] = "I have&no&choice.."
  if mycommand >= 50 and mycommand < 80 then global.msg[0] = "Forgive&me..."
  if mycommand >= 80 and mycommand <= 100 then global.msg[0] = "*sniff&sniff*"
  if whatiheard = 1 or whatiheard=3 then 
      { 
     global.msg[0] = "I&can't&handle&this..."
      }
     
global.msg[1] = "%%%"
global.typer = 2
blconwd = instance_create(blcon.x+15,blcon.y+10,OBJ_NOMSCWRITER)
    
    
global.border = 3
obj_heart.x = round((global.idealborder[0] + global.idealborder[1])/2) - 8
obj_heart.y = round((global.idealborder[2] + global.idealborder[3])/2) - 8


