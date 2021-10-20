myinteract = 3
global.msc=0
global.typer=5
global.facechoice=0
global.faceemotion=0
global.msg[0]="%%"
if room=room_asrielroom then global.msg[0]="* An empty photo frame.&* It's really dusty.../%%"
if room=room_torhouse2 then
     {
     global.msg[0]="* It's a history book^1.&* Here's a random page.../"
     global.msg[1]="* Trapped behind the barrier&  and fearful of further&  human attacks^1, we retreated./"
     global.msg[2]="* Far^1, far into the earth&  we walked^1, until we reached&  the cavern's end./"
     global.msg[3]="* This was our new home^1,& which we named.../"
     global.msg[4]="* \"Home.\"/"
     global.msg[5]="* As great as our king is^1,&  he is pretty lousy at&  names./%%"
     }
if room=room_torhouse1 then global.msg[0]="* Inside is an old calendar&  from the beginning of&  201X./%%"
if room=room_torielroom then 
      { global.msg[0]="* Just a regular old bucket^3 & &  of snails./%%"
        if x>90 
           {
           global.msg[0]="* It's an encyclopedia of&  subterranean plants. You&  open to the middle.../"
           global.msg[1]="* \"Typha\" - A group of wetland&  flowering plants with&  brown^1, oblong seedpods./"
           global.msg[2]="* Known more commonly as& \"water sausages.\"/%%"
           global.flag[50]=1
           }
           }
if room=room_torhouse3 then
       {
       global.msg[0]="* You have seen this type&  of plant before but&  do not know its name./%%"
       if global.flag[50]=1 then global.msg[0]="* Oh^2!&* It is a \"water sausage.\"/%%"
       }
if room=room_kitchen then
      {
      global.msg[0]="* What a nice smell...&* Too hot to eat^1, though./%%"
      if global.flag[103]>0 then global.msg[0]="* The size of the pie&  intimidates you too much&  for you to eat it./%%"
      }
mydialoguer = instance_create(0,0,obj_dialoguer)

