function SCR_BORDERSETUP() {
	if global.border = 0 then // dialogue box
	{
	global.idealborder[0] = 32
	global.idealborder[1] = 602
	global.idealborder[2] = 250
	global.idealborder[3] = 385
	}

	if global.border = 1 then // standard box
	{
	global.idealborder[0] = 217
	global.idealborder[1] = 417
	global.idealborder[2] = 180
	global.idealborder[3] = 385
	}

	if global.border = 2 then // tower box
	{
	global.idealborder[0] = 217
	global.idealborder[1] = 417
	global.idealborder[2] = 125
	global.idealborder[3] = 385
	}

	if global.border = 3 then // small box
	{
	global.idealborder[0] = 237
	global.idealborder[1] = 397
	global.idealborder[2] = 250
	global.idealborder[3] = 385
	}

	if global.border = 4 then // claustrophobic box
	{
	global.idealborder[0] = 267
	global.idealborder[1] = 367
	global.idealborder[2] = 295
	global.idealborder[3] = 385
	}

	if global.border = 5 then // wide-small box
	{
	global.idealborder[0] = 192
	global.idealborder[1] = 442
	global.idealborder[2] = 250
	global.idealborder[3] = 385
	}

	if global.border = 6 then // slightly bigger box PREP
	{
	global.idealborder[0] = 227
	global.idealborder[1] = 407
	global.idealborder[2] = 250
	global.idealborder[3] = 385
	}
	if global.border = 7 then // slightly bigger box TALL
	{
	global.idealborder[0] = 227
	global.idealborder[1] = 407
	global.idealborder[2] = 200
	global.idealborder[3] = 385
	}

	if global.border = 8 then // short box
	{
	global.idealborder[0] = 202
	global.idealborder[1] = 432
	global.idealborder[2] = 290
	global.idealborder[3] = 385
	}



}
