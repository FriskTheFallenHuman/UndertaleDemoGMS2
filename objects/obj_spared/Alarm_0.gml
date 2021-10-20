x = x + shudder
if shudder < 0 then shudder = -(shudder + 2)
else shudder = -shudder
alarm[0] = 2
if shudder = 0 then
  {
  alarm[0]=0
   exit;
  }



