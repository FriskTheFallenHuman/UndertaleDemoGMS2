function scr_msgup() {
	global.msc+=1
	stringno=0
	stringpos=1 //which character of the string it starts on
	lineno=0 //default the line's vertical space
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

	halt=0 //if 1, you must hit enter to continue
	alarm[0]=textspeed



}
