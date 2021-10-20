for (i=0; i<(wd/2); i+=1)
{
if draw_getpixel(x+(i*2),y+(line*2)) = c_white then file_text_write_string(file,"1")
else file_text_write_string(file,"0")
//file_text_writeln(file)
}
if myvapor=0 then line+=1
line+=1
if line>(ht/2) then
    {
    file_text_write_string(file,"2")
    file_text_close(file)
    instance_destroy()
    exit
    }
alarm[0]=(1+myvapor)

