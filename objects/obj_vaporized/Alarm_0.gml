if finishedreading=0
{
for (i=0; i<(wd/2); i+=1)
{
mychar=string_char_at(mydata,myread)
if mychar= "1" then instance_create(x+(i*2)-2,y+(line*4),obj_blkpxltall)
myread+=1
}
if myvapor=0 then
{
line+=1
for (i=0; i<(wd/2); i+=1)
{
mychar=string_char_at(mydata,myread)
if mychar= "1" then instance_create(x+(i*2)-2,y+(line*4),obj_blkpxltall)
myread+=1
}
}


line+=1
if line>(ht/2-4) then
    {
    finishedreading=1
    }
    else
    {
    alarm[0]=(1+myvapor)
    if myvapor > 1 then sound_play(snd_chug)
    }
}


