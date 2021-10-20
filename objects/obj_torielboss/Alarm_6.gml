if hplastturn=global.monsterhp[myself] and global.talked=-1
   {
   conversation+=1
   iwilltalk=1
   }
   else iwilltalk=0
   
hplastturn=global.monsterhp[myself]
if ( global.monsterhp[myself] > 0 )
  {
  if iwilltalk=1
  {
  global.turntimer=-300
  alarm[5]+=70 
  if conversation=1 then global.msg[0] = " ....."
  if conversation=2 then global.msg[0] = " .....& ....."
  if conversation=3 then global.msg[0] = " .....& .....& ....."
  if conversation=4 then global.msg[0] = " ...?"
  if conversation=5 then global.msg[0] = " What are& you& doing?"
  if conversation=6 then global.msg[0] = " Attack& or run& away!"
  if conversation=7 then global.msg[0] = " What are& you& proving& this way?"
  if conversation=8 then global.msg[0] = " Fight me& or& leave!"
  if conversation=9 then global.msg[0] = " Stop it."
  if conversation=10 then instance_create(x,y,obj_torgen)
  if conversation=10 then global.msg[0]= " Stop& looking& at me& that way."
  if conversation=11 then global.msg[0]=" Go away!"
    if conversation=12 then global.msg[0]=" ..."
    if conversation=12 then sprite_index=spr_torielboss_side
    if conversation=13 then global.msg[0]=" ...& ..."
    if conversation=13 then sprite_index=spr_torielboss_sidesad
  if conversation>13
     {
      alarm[5]+=400
      if conversation=14 then caster_free(global.batmusic) 
      global.mercy=1
       if conversation=14 then sprite_index=spr_torielboss_sad
       if conversation=14 then global.msg[0]="I know you want&to go home^1, but..."
       if conversation>15 then sprite_index=spr_torielboss_sadhappy
       if conversation=15 then global.msg[0]="But please... go&upstairs now."
       if conversation=16 then global.msg[0]="I promise I will&take good care&of you here."
       if conversation=17 then global.msg[0]="I know we do not&have much^1, but..."
       if conversation=18 then global.msg[0]="We can have a&good life here."
       if conversation=19 then sprite_index=spr_torielboss_sad
       if conversation=19 then global.msg[0]="Why are you&making this so&difficult?"
       if conversation=20 then sprite_index=spr_torielboss_sidesad
       if conversation=20 then global.msg[0]="Please^1, go upstairs."
       if conversation=21 then sprite_index=spr_torielboss_sidesad2
       if conversation=21 then global.msg[0]="....."
       if conversation=22 then sprite_index=spr_torielboss_sidesadhappy
       if conversation=22 then global.msg[0]="Ha ha..."
       if conversation=23 then global.msg[0]="Pathetic^1, is it not^2?&I cannot save even&a single child."
       if conversation=24 then global.msg[0]="..."
       if conversation=24 then sprite_index=spr_torielboss_sidesad
       if conversation=25 then
                    {
                    sprite_index=spr_torielboss_neutral
                    alarm[5]=-6
                    conversation=99
                    global.flag[45]=5
                    ini_open("undertale.ini")
                    TS=ini_read_real("Toriel","TS",0)
                    ini_write_real("Toriel","TS",TS+1)
                    ini_close()
                    global.msg[0]="No^1, I understand./"
                    global.msg[1]="You would just be&unhappy trapped&down here./"
                    global.msg[2]="The RUINS are very&small once you&get used to them./"
                    global.msg[3]="It would not be&right for you to&grow up in a&place like this./"
                    global.msg[4]="My expectations...&My loneliness...&My fear.../"
                    global.msg[5]="For you^1, my child...&I will put them aside./%%"
                    global.mnfight=99
                    global.myfight=0
                    }
                    
       blcon = instance_create(x+sprite_width+3,y+32,obj_blconwdflowey)
       global.typer = 8
       blconwd = instance_create(obj_blconwdflowey.x+36,obj_blconwdflowey.y+10,OBJ_NOMSCWRITER)
     }
     else blcon = instance_create(x+sprite_width+21,ystart+24,obj_blconsm)
    global.typer = 8
    if instance_exists(obj_blconsm)
    blconwd = instance_create(blcon.x+15,blcon.y+10,OBJ_NOMSCWRITER)
     }
     }
    else
       {
       destroyed=1
       global.faceemotion=0
       caster_free(global.batmusic)
       if instance_exists(dmgwriter)
       with dmgwriter instance_destroy()
       blcon = instance_create(x+sprite_width+2,y+36,obj_blconwdflowey)
      global.msc=0
      global.msg[0]="\\E0Urgh.../"
      global.msg[1]="\\E0You are stronger&than I thought.../"
      global.msg[2]="Listen to me^1,& small one.../"
      global.msg[3]="If you go beyond&this door,/"
      global.msg[4]="Keep walking as&far as you can./"
      global.msg[5]="Eventually you will&reach an exit./"
      global.msg[6]="\\E1..^1.&..../"
      global.msg[7]="Do not let them&take your soul./"
      global.msg[8]="Asgore's plan&cannot be allowed&to succeed./"
      global.msg[9]="\\E2....../"
      global.msg[10]="Be good^1,&won't you?/"
      global.msg[11]="\\E3My child.      %%" 
      if global.flag[202]>=monsterpopulation1
          {
          global.faceemotion=4
          global.msg[0]="Y... you...&really hate me&that much?/"
          global.msg[1]="Now I see who I&was protecting by&keeping you here./"
          global.msg[2]="Not you.../"
          global.msg[3]="\\E5But them!/"
          global.msg[4]="\\E3Ha... ha... %%"
          }
      if conversation>13 then
          {
          global.faceemotion=4
          global.msg[0]="\\E4You.../"
          global.msg[1]="... at my most&vulnerable&moment.../"
          global.msg[2]="To think I was&worried you&wouldn't fit&in out there.../"
          global.msg[3]="\\E5Eheheheh!!!&You really are&no different than&them!/"
          global.msg[4]="\\E3Ha... ha... %%"
          }
      global.plot=11
      conversation=1
      image_speed=0.2
      global.typer = 12
      blconwriter = instance_create(obj_blconwdflowey.x+36,obj_blconwdflowey.y+10,OBJ_WRITER)
      alarm[9]=2
      }

mycommand=round(random(100))
global.border = 6
obj_heart.x = round((global.idealborder[0] + global.idealborder[1])/2) - 8
obj_heart.y = round((global.idealborder[2] + global.idealborder[3])/2) - 8

