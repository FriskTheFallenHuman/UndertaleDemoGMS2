// TODO: ??
SCR_TEXTTYPE(0)

stringno=0
stringpos=1 //which character of the string it starts on
lineno=0 //default the line's vertical space
halt=0 //if 1, you must hit enter to continue
myx = writingx
myy = writingy
x=round(x)
y=round(y)

SCR_TEXT(global.msc)

for (n=0; global.msg[n]!="%%%"; n+=1)
{
mystring[n]=global.msg[n]
}

originalstring=mystring[0]

stringpos=string_length(originalstring)

