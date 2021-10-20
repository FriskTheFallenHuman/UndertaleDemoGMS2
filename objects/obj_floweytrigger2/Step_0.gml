if conversation=2 or conversation=4
if instance_exists(obj_dialoguer) = false
    {
    global.interact=1
    alarm[1]=150
    if conversation=2 then sound_play(snd_floweylaugh)
    else { sound_play(snd_wonderfulidea); alarm[1]=80 }
    obj_floweytalker1.image_speed=0.25
    conversation=999
    }

if conversation=3 and instance_exists(obj_dialoguer)=false
    {
    global.interact=1
    obj_floweytalker1.sprite_index=spr_floweygrow
    obj_floweytalker1.image_speed=0.33333334
    obj_floweytalker1.image_index=0
    alarm[2]=240
    conversation=999
    }
    
if conversation=1 then
    {
    global.interact=1
    myinteract=3
    global.typer=9
    global.facechoice=2
    global.faceemotion=0
    global.msc=0
    ini_open("undertale.ini")
    TK=ini_read_real("Toriel","TK",0)
    TS=ini_read_real("Toriel","TS",0)
    FS=ini_read_real("Flowey","FloweyExplain1",0)
    ini_close()
    if global.flag[45]=4 then
       {
       sprite_save(spr_19_2,0,"instruction/19.png")
    global.msg[0]="* Hee hee hee.../"
    global.msg[1]="\\E2* I hope you like your&  choice./"
    global.msg[2]="* After all^1, it's not&  as if you can go&  back and change fate./"
    global.msg[3]="\\E0* In this world^1, it's kill&  or be killed./"
    global.msg[4]="\\E2* That old hag thought&  she could break the&  rules./"
    global.msg[5]="\\E1* She tried so hard&  to save you humans./"
    global.msg[6]="\\E0* But when it came&  down to it.../"
    global.msg[7]="\\TF*\\E5 Hee hee.../"
    global.msg[8]="\\E4* SHE COULDN'T EVEN&  SAVE HERSELF./"
    global.msg[9]="* WHAT AN IDIOT!!/%%"
    conversation=2
    if TK=2 then
       {
     global.msg[0]="\\E2* Heheheheh./"
     global.msg[1]="* You just can't&  get enough^1, can you!?/"
     global.msg[2]="\\E4* .../"
     global.msg[3]="\\E6* How many more&  times will you&  kill her?/"
     global.msg[4]="* Ha ha ha ha ha.../"
     global.msg[5]="\\E4*\\TF You disgusting animal./"
     global.msg[6]="* You didn't even&  TRY to spare her./%%"
     conversation=2
        }
     if TK>2 then
       {
     global.msg[0]="* Wow^1, you really&  can't get enough./"
     global.msg[1]="\\E5* You kind of remind&  me of myself./%%"
     conversation=2
        }
     if TS>0 and TK>0 then
         {
         ini_open("undertale.ini")
          ini_write_real("Flowey","FloweyExplain1",1)
          ini_close()
         global.msg[0]="* Wow^1, you're utterly&  repulsive./"
         global.msg[1]="\\E6* You spared her life.../"
         global.msg[2]="* Then you decided that&  just wasn't interesting&  enough for you./"
         global.msg[3]="\\E7* So you murdered her&  just to see what&  would happen./"
         global.msg[4]="\\E5* You killed her out&  of boredom./"
         global.msg[5]="* Truly disgusting.../%%"
         if FS=0 then 
            {
             global.msg[5]="* Hee hee.../"
             global.msg[6]="\\E4* You naive idiot./"
             global.msg[7]="* Do you think you&  are the only one&  with that power?/"
             global.msg[8]="\\E4* The power to reshape&  the world.../"
             global.msg[9]="* Purely by your&  own determination./"
             global.msg[10]="* The ability to&  play God!/"
             global.msg[11]="* The ability to \"SAVE.\"/"
             global.msg[12]="\\E0* I thought I was&  the only one with&  that power^1. But.../"
             global.msg[13]="\\E1* I can't SAVE anymore./"
             global.msg[14]="* Apparently YOUR&  desires for this&  world override MINE./"
             global.msg[15]="\\E5* Well well./"
             global.msg[16]="* Enjoy that power&  while you can./"
             global.msg[17]="\\E4* I'll be watching./%%"
             conversation=3
             }
          }
       if global.flag[202] >= monsterpopulation1 then 
            {
             global.msg[0]="* Hahaha.../"
             global.msg[1]="\\E1* You're not really human^1,&  are you?/"
             global.msg[2]="\\E1* No.^2 You're empty inside^2.&* \\E4Just like me^1.&* In fact.../"
             global.msg[3]="\\E8* You're "+global.charname+",^1 right?/"
             global.msg[4]="\\E0* We're still inseperable^1,&  after all these years.../"
             global.msg[5]="* Listen^1.&* I have a plan to become& all powerful./"
             global.msg[6]="\\E2* Even more powerful than& you and your stolen soul./"
             global.msg[7]="\\E4* Let's destroy everything&  in this wretched world./"
             global.msg[8]="\\E6* Everyone^1, everything in&  these \\E7worthless&  memories.../"
             global.msg[9]="\\E5* Let's turn 'em all&  to dust./%%"
             conversation=4
            }
          }
     else
       {
       if global.flag[45]=5 then
           {
           global.faceemotion=2
           sprite_save(spr_19_4,0,"instruction/19.png")
           global.msg[0]="* Clever.&* Verrrryyy clever./"
           global.msg[1]="* You think you're really&  smart^1, don't you?/"
           global.msg[2]="\\E0* In this world^1, it's kill&  or be killed./"
           global.msg[3]="\\E1* So you were able to&  play by your own&  rules./"
           global.msg[4]="*\\E4 You spared the life&  of a single person./"
           global.msg[5]="* Hee hee hee.../"
           if global.kills>0 then
              {
               global.msg[6]="* Froggit^1, Whimsun^1.&* Vegetoid^1, Loox^1.&* Migosp^1, Moldsmal./"
               global.msg[7]="* Think about those names./"
               global.msg[8]="* Do you think any of&  those monsters have&  families?/"
               global.msg[9]="* Do you think any of&  them have friends?/"
               global.msg[10]="\\E6* Each one could have&  been someone else's&  Toriel./"
               global.msg[11]="\\E7* Selfish brat./"
               global.msg[12]="* Somebody is dead&  because of you./%%"
               conversation=2
               }
           if global.kills=0 then
              {
               global.msg[6]="\\E2* I bet you feel&  really great./"
               global.msg[7]="* You didn't kill&  anybody this time./"
               global.msg[8]="\\E0* But what will you&  do if you meet a&  relentless killer?/"
               global.msg[9]="* You'll die and you'll&  die and you'll&  die./"
               global.msg[10]="\\E1* Until you tire of&  trying./"
               global.msg[11]="\\E0* What will you do&  then?/"
               global.msg[12]="\\E5* Will you kill&  out of frustration?/"
               global.msg[13]="* Or will you give&  up entirely on&  this world.../"
               global.msg[14]="\\E4* ... and let ME inherit&  the power to control&  it?/"
               global.msg[15]="\\E5* I am the prince of&  this world's future./"
               global.msg[16]="* Don't worry^1, my little&  monarch^1, my plan&  isn't regicide./"
               global.msg[17]="* This is SO much&  more interesting./%%" 
               conversation=3
               }
           if TK>0 and FS=0 then
             {
                ini_open("undertale.ini")
                ini_write_real("Flowey","FloweyExplain1",1)
                ini_close()
             global.msg[6]="* But don't act so&  cocky./"
             global.msg[7]="* I know what you did./"
             global.msg[8]="\\E6* You murdered her./"
             global.msg[9]="\\E7* And then you went&  back^1, because you&  regretted it./"
             global.msg[10]="* Ha ha ha ha.../"
             global.msg[11]="\\E5* You naive idiot./"
             global.msg[12]="* Do you think you&  are the only one&  with that power?/"
             global.msg[13]="\\E4* The power to reshape&  the world.../"
             global.msg[14]="* Purely by your&  own determination./"
             global.msg[15]="* The ability to&  play God!/"
             global.msg[16]="* The ability to \"SAVE.\"/"
             global.msg[17]="\\E0* I thought I was&  the only one with&  that power^1. But.../"
             global.msg[18]="\\E1* I can't SAVE anymore./"
             global.msg[19]="* Apparently YOUR&  desires for this&  world override MINE./"
             global.msg[20]="\\E5* Well well./"
             global.msg[21]="* Enjoy that power&  while you can./"
             global.msg[22]="\\E4* I'll be watching./%%"
                          conversation=3
             }
             }  
          }
    mydialoguer = instance_create(0,0,obj_dialoguer)
    }


