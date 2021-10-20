if halt=1 then
{
myletter =" "
stringpos=1
stringno=(stringno+1)
originalstring=mystring[stringno]
myx = writingx
myy = writingy
lineno = 0
halt=0
alarm[0] = textspeed
}
if halt=2 then instance_destroy()

// battle only
if halt=4 then
 {
  global.myfight = 0
  global.mnfight = 1
  keyboard_clear(vk_enter)
  instance_destroy()
 }

