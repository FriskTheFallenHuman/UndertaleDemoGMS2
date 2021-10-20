

for (i=0; i<(wd/2); i+=1)
{
if file_text_read_string(file) = "1" then instance_create(x+(i*2)-2,y+(line*4),obj_blkpxl0tall)
file_text_readln(file)
}
if myvapor=0 then
{
line+=1
for (i=0; i<(wd/2); i+=1)
{
if file_text_read_string(file) = "1" then instance_create(x+(i*2),y+(line*4),obj_blkpxl0tall)
file_text_readln(file)
}
}


line+=1
if line>(ht/2-4) then
    {
    file_text_close(file)
    instance_destroy()
    exit
    }
alarm[0]=(1+myvapor)
if myvapor > 1 then sound_play(snd_chug)


