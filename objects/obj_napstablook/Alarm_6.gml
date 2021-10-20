if ( global.monsterhp[myself] > 0 )
  {
  
  blcon = instance_create(x+sprite_width+21,ystart+24,obj_blconsm)  
  mycommand = round(random(100))
  if mycommand >= 0 and mycommand < 40 then global.msg[0] = "i'm&fine,&thanks."
  if mycommand >= 40 and mycommand < 66 then global.msg[0] = "just&pluggin&along..."
  if mycommand >= 66 and mycommand  then global.msg[0] = "nnnnnn&ggghhh."
  if whatiheard = 0 then global.msg[0] = "oh, i'm&REAL&funny."
  if whatiheard = 1 then global.msg[0] = "go&ahead,&do it."
  if whatiheard = 3 then global.msg[0] = "i'd just&weigh&you&down."
  if whatiheard = 4 then global.msg[0] = "heh..."
  if whatiheard = 4 and mercymod>-300 then global.msg[0] = "heh&heh..."
  if whatiheard = 4 and mercymod>-200 then global.msg[0] = "let me&try..."
  if whatiheard !=4 and whatiheard !=3 and mercymod=-50 then
       {
       global.msg[0]="i knew&it..."
       mercymod=-1200
       if instance_exists(blt_blookhat) then with blt_blookhat instance_destroy()
       }
  if whatiheard=3 and mercymod=-50 then
       {
       global.msg[0]="umm..."
       }
  if mercymod=-49 then 
      {
      global.msg[0]= "oh&gee..."
      alarm[7]=60
      global.plot=10.3
      }
    else
    {
global.border = 3
if global.turn=1 then global.border=5
obj_heart.x = round((global.idealborder[0] + global.idealborder[1])/2) - 8
obj_heart.y = round((global.idealborder[2] + global.idealborder[3])/2) - 8
     }
     
global.msg[1] = "%%%"
global.typer = 2
blconwd = instance_create(blcon.x+15,blcon.y+10,OBJ_NOMSCWRITER)
     }
    else
       {
       if instance_exists(dmgwriter)
       with dmgwriter instance_destroy()
       blcon = instance_create(x+sprite_width+11,y+24,obj_blconwdflowey)
      global.msc=0
      global.msg[0]="umm... you do&know you cant&kill ghosts, right?/"
      global.msg[1]="we're sorta&incorporeal and&all/"
      global.msg[2]="i was just&lowering my hp&because i didnt&want to be rude/"
      global.msg[3]="sorry..^1.&i just made this&more awkward.../"
      global.msg[4]="pretend you beat& me.../"
      global.msg[5]="ooooooooo^1o%%"
      global.plot=11
      conversation=1
      image_speed=0.2
      global.typer = 2
      blconwriter = instance_create(obj_blconwdflowey.x+36,obj_blconwdflowey.y+10,OBJ_WRITER)
      alarm[9]=2
      }
      

