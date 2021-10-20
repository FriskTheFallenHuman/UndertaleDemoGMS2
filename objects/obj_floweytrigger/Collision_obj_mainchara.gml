

if global.plot=0 then
 {
 other.x=other.xprevious
other.y=other.yprevious
 global.interact=1
global.currentsong=caster_load("music/flowey.ogg")
caster_loop(global.currentsong,1,1)
global.typer=9
global.facechoice=2
global.faceemotion=0
global.msc=200
ini_open("undertale.ini")
g=ini_read_real("Flowey","Met1",0)
if g=1 then
   {
   global.msc=0
    global.msg[0]="\\W* Howdy^2!&* I'm\\Y FLOWEY\\W.^2 &* \\YFLOWEY\\W the \\YFLOWER\\W!/"
    global.msg[1]="* Hee hee hee.../"
    global.msg[2]="* Why'd you make me&  introduce myself?/"
    global.msg[3]="* It's rude to act&  like you don't&  know who I am./"
    global.msg[4]="* Someone ought to teach&  you proper manners./"
     global.msg[5]="* I guess little old me&  will have to do./"
     global.msg[6]="* Ready^2?&* Here we go!/%%"
   }
if g>1 then
   {
   global.msc=0
    global.msg[0]="* Don't you have anything&  better to do?/%%"
   }
ini_write_real("Flowey","Met1",g+1)
ini_close()
if instance_exists(obj_dialoguer)=false then
  instance_create(0,0,obj_dialoguer)
conversation=1

 }

