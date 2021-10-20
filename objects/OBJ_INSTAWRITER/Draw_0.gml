myx = writingx
myy = writingy
for (n=1; n < stringpos+1; n=n+1)
{

if string_char_at(originalstring,n)="&" then
    {
    SCR_NEWLINE()
    n = (n + 1)
    }
    
if string_char_at(originalstring,n)="^" then
    {
    n = (n + 2)
    }

if string_char_at(originalstring,n)="\\" then
    {
    if string_char_at(originalstring,n+1)="R" then mycolor=c_red
    if string_char_at(originalstring,n+1)="W" then mycolor=c_white
    if string_char_at(originalstring,n+1)="X" then mycolor=c_black
    if string_char_at(originalstring,n+1)="B" then mycolor=c_blue
    if string_char_at(originalstring,n+1)="P" then SCR_TEXTSETUP(fnt_plain,c_red,x,y,x+150,43,4,SND_TXT2,10,25) //TODO: ??
    if string_char_at(originalstring,n+1)="C" then
        {
        if instance_exists(obj_choicer)=false then instance_create(0,0,obj_choicer)
        } 
    n = (n + 2)
    }
    
if string_char_at(originalstring,n)="/" then 
   {
    halt = 1
    if string_char_at(originalstring,n+1)="%" then halt = 2
    break
   }
   
if string_char_at(originalstring,n)="%" then 
   {
   if string_char_at(originalstring,n+1)="%" then 
       {
       instance_destroy()
       break
       }
    stringpos=1
    stringno=(stringno+1)
    originalstring=mystring[stringno]
    myx = writingx
    myy = writingy
    lineno = 0
    alarm[0] = textspeed
    myletter = " "
    break
   }
    
if myx > writingxend then
    { 
    SCR_NEWLINE()
    }
    
myletter = string_char_at(originalstring, n)
draw_set_font(myfont) //set the font
draw_set_color(mycolor) //set the font color
if shake>38 then
{
  if shake=39 then //earthquake until end
     {
     direction = direction+10
     draw_text(myx+hspeed, myy+vspeed, string_hash_to_newline(myletter))
     }
  if shake=40 then draw_text(myx+hspeed, myy+vspeed, string_hash_to_newline(myletter)) //all roll
  if shake=41 then //demoscene roll
     {
     direction = direction+10*n
     draw_text(myx+hspeed, myy+vspeed, string_hash_to_newline(myletter))
     direction = direction-10*n
     }
  if shake=42 then //drifting text
     {
     direction = direction+20*n
     draw_text(myx+hspeed, myy+vspeed, string_hash_to_newline(myletter))
     direction = direction-20*n
     }
    if shake=43 then //singing
     {
     direction = direction+30*n
     draw_text(myx+hspeed*0.70+10, myy+vspeed*0.70, string_hash_to_newline(myletter))
     direction = direction-30*n
     }
}
else draw_text(myx + (random(shake)-(shake/2)), myy + (random(shake)-(shake/2)), string_hash_to_newline(myletter))
myx = (myx + spacing)
}

