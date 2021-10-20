    blcon = instance_create(x+sprite_width,y,obj_blconsm)  
    mycommand = round(random(100))
    if mycommand >= 0 and mycommand < 30 then global.msg[0] = "Ribbit,&ribbit."
    if mycommand >= 30 and mycommand < 50 then global.msg[0] = "Croak,&croak."
    if mycommand >= 50 and mycommand < 80 then global.msg[0] = "Hop,&hop."
    if mycommand >= 80 and mycommand <= 100 then global.msg[0] = "Meow."
    if whatiheard = 1 then 
     { 
      global.msg[0] = "(Blushes&deeply.)&Ribbit.."
      alarm[5]=108
     }
    if whatiheard = 3 then global.msg[0] = "(Shiver)"
     
     
    global.msg[1] = "%%%"
    global.typer = 2
    blconwd = instance_create(blcon.x+15,blcon.y+10,OBJ_NOMSCWRITER)
    
    
global.border = 3
obj_heart.x = round((global.idealborder[0] + global.idealborder[1])/2) - 8
obj_heart.y = round((global.idealborder[2] + global.idealborder[3])/2) - 8



