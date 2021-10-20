 blcon = instance_create(x+sprite_width-8,ystart,obj_blconsm)  
  mycommand = round(random(100))
  if mycommand >= 0 and mycommand < 20 then global.msg[0] = "Contains&Vitamin&A"
  if mycommand >= 20 and mycommand < 40 then global.msg[0] = "Part Of&A&Complete&Breakfast"
  if mycommand >= 40 and mycommand < 60 then global.msg[0] = "Eat&Your&Greens"
  if mycommand >= 60 and mycommand <= 80 then global.msg[0] = "Farmed&Locally,&Very&Locally"
  if mycommand >= 80 and mycommand <= 100 then global.msg[0] = "Fresh&Morning&Taste"
  if whatiheard = 3 then
      { 
     global.msg[0] = "Plants&Can't&Talk&Dummy"
      }
 
     
global.msg[1] = "%%%"
global.typer = 2
blconwd = instance_create(blcon.x+15,blcon.y+10,OBJ_NOMSCWRITER)
    
    
global.border = 3
obj_heart.x = round((global.idealborder[0] + global.idealborder[1])/2) - 8
obj_heart.y = round((global.idealborder[2] + global.idealborder[3])/2) - 8


