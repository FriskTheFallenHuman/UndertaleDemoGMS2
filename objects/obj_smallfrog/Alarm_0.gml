myinteract = 3
global.msc=0
global.msg[0]="* Ribbit^1, ribbit^1.&* (Excuse me^1, human.)/"
global.msg[1]="* (I have some advice&  for you about battling&  monsters.)/"
global.msg[2]="* (If you act a certain way&  or FIGHT until you&  almost defeat them...)/"
global.msg[3]="* (They might not want to&  battle you anymore.)/"
global.msg[4]="* (If a monster does not&  want to fight you^1, please...)/"
global.msg[5]="* (Use some MERCY^1, human.^1)&* Ribbit./%%"
global.typer=5
global.facechoice=0
global.faceemotion=0
if room=room_ruins17 then
   {
   global.msg[0]="* Ribbit^1, ribbit^1.&* (Just between you and me...)/"
   global.msg[1]="* (I saw TORIEL come out of&  here just a little&  while ago.)/"
   global.msg[2]="* (She was carrying some&  groceries.)/"
   global.msg[3]="* (I didn't ask what they&  were for...)/"
   global.msg[4]="* (We're all too intimidated&  to talk to her.^1)&* Ribbit./%%"
   }

mydialoguer = instance_create(0,0,obj_dialoguer)

