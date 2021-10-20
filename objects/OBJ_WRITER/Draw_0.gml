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
    if string_char_at(originalstring,n+1)="Y" then mycolor=c_yellow
    if string_char_at(originalstring,n+1)="X" then mycolor=c_black
    if string_char_at(originalstring,n+1)="B" then mycolor=c_blue
    if string_char_at(originalstring,n+1)="C" then
        {
        if instance_exists(obj_choicer)=false then choicer=instance_create(0,0,obj_choicer)
        choicer.creator=id
        } 
    if string_char_at(originalstring,n+1)="E" then
      {
      global.faceemotion=real(string_char_at(originalstring,n+2))
      n+=1
      }
    if string_char_at(originalstring,n+1)="F" then
      {
      global.facechoice=real(string_char_at(originalstring,n+2))
      global.facechange=1
      n+=1
      }
    if string_char_at(originalstring,n+1)="T" then
      {
      newtyper=string_char_at(originalstring,n+2)
      if newtyper="T" then global.typer=4
      if newtyper="0" then global.typer=5
      if newtyper="S" then global.typer=10
      if newtyper="F" then global.typer=16
      if newtyper="s" then global.typer=17
      if newtyper="P" then global.typer=18
      SCR_TEXTTYPE(global.typer)
      global.facechange=1
      n+=1
      }    
    n = (n + 2)
    }
    
if string_char_at(originalstring,n)="/" then 
   {
    halt = 1
    if string_char_at(originalstring,n+1)="%" then halt = 2
    if string_char_at(originalstring,n+1)="^" then halt = 4
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
if myletter="l" or myletter="i" or myletter="I"
{if global.typer=18 then myx+=2; }
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
if global.typer=18 then
  {
  if myletter="O" or myletter="W" then myx+=2
  if myletter="I" then myx-=4
  }

}

