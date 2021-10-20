for (i=0; i<(wd/2); i+=1)
{
if draw_getpixel(x+(i*2),y+(line*2)) = c_white then instance_create(x+(i*2),y+(line*2),obj_blkpxlgrav)
if myvapor=0 then
if draw_getpixel(x+(i*2),y+(line*2)+2) = c_white then instance_create(x+(i*2),y+(line*2)+2,obj_blkpxlgrav)
}
if myvapor=0 then line+=1
line+=1
if line>(ht/2) then
    {
    instance_destroy()
    exit
    }
alarm[0]=(1+myvapor)
if myvapor > 1 then sound_play(snd_chug)


