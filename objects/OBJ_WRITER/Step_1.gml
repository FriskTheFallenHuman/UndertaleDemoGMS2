myletter = string_char_at(originalstring, stringpos)
if shake>38 then
 {
 speed=2
 direction = (direction+20)
 }
 if shake=42 then
 {
 speed=4
 direction = (direction-19)
 }
 if halt = 3 then instance_destroy()

