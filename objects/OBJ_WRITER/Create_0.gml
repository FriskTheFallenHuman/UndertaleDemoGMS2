SCR_TEXTTYPE(0)

x=round(x)
y=round(y)
doak=0
stringno=0
stringpos=1 //which character of the string it starts on
lineno=0 //default the line's vertical space
halt=0 //if 1, you must hit enter to continue
writingx = round(writingx)
writingy = round(writingy)
myx = writingx
myy = writingy

SCR_TEXT(global.msc)

for (n=0; global.msg[n]!="%%%"; n+=1)
{
mystring[n]=global.msg[n]
}

originalstring=mystring[0]

action_set_alarm(textspeed, 0);
