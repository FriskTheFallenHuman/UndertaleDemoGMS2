if stringpos < string_length(originalstring) then
    {
    stringpos = (stringpos + 1)
    alarm[0] = textspeed
    if string_char_at(originalstring,stringpos)="^" then
      {
      n = real(string_char_at(originalstring,stringpos+1))
      alarm[0] = (n*10)
      }
       if string_char_at(originalstring,stringpos)!=" " 
       if string_char_at(originalstring,stringpos)!="&"
       if string_char_at(originalstring,stringpos)!="^"
       if string_char_at(originalstring,stringpos-1)!="^" 
       if string_char_at(originalstring,stringpos)!="\\"
       if string_char_at(originalstring,stringpos-1)!="\\"
       if string_char_at(originalstring,stringpos)!="/"
       if string_char_at(originalstring,stringpos)!="%"
         {
         sound_stop(txtsound)
          sound_play(txtsound)
         }
         if string_char_at(originalstring,stringpos)="&" then stringpos+=1
         if string_char_at(originalstring,stringpos)="\\" then stringpos+=2
       }
       

