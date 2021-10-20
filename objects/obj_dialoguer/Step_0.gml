if instance_exists(writer) = false then instance_destroy()
else
if keyboard_check_pressed(vk_shift)  then
{
if writer.halt=0
if global.typer!=10
writer.stringpos = string_length(writer.originalstring)
keyboard_clear(vk_shift)
}

if global.facechange=1 and global.facechoice=0 then
   {
      writer.x=xx+30
     writer.writingx=writer.x
     while instance_exists(obj_face) = true
     {
      with obj_face instance_destroy()
     }
     global.facechange=0
   }

if global.facechange=1
    {
     writer.x=xx+68
     writer.writingx=(writer.x+20)
     scr_facechoice()
     global.facechange=0 
    }

